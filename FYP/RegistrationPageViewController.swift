//
//  RegistrationPageViewController.swift
//  UserLoginAndRegistration
//
//  Created by Waqar Khalid on 3/19/16.
//  Copyright © 2016 Waqar Khalid. All rights reserved.
//

import UIKit

class RegistrationPageViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate

{
    @IBAction func haveAccountBtn(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
   

  
    @IBAction func dateTextInputPressed( sender: UITextField) {
        let inputView = UIView(frame: CGRectMake(0, 0, self.view.frame.width, 240))
        
        
        let datePickerView  : UIDatePicker = UIDatePicker(frame: CGRectMake(0, 40, 0, 0))
        datePickerView.datePickerMode = UIDatePickerMode.Date
        inputView.addSubview(datePickerView) // add date picker to UIView
        
        let doneButton = UIButton(frame: CGRectMake((self.view.frame.size.width/2) - (100/2), 0, 100, 50))
        doneButton.setTitle("Done", forState: UIControlState.Normal)
        doneButton.setTitle("Done", forState: UIControlState.Highlighted)
        doneButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        doneButton.setTitleColor(UIColor.grayColor(), forState: UIControlState.Highlighted)
        
        inputView.addSubview(doneButton) // add Button to UIView
        
        doneButton.addTarget(self, action: "doneButton:", forControlEvents: UIControlEvents.TouchUpInside) // set button click event
        
        sender.inputView = inputView
        datePickerView.addTarget(self, action: Selector("handleDatePicker:"), forControlEvents: UIControlEvents.ValueChanged)
        
        handleDatePicker(datePickerView) // Set the date on start.
    }
    
    func handleDatePicker(sender: UIDatePicker) {
        let dateFormatter = NSDateFormatter()
        sender.maximumDate = NSCalendar.currentCalendar().dateByAddingUnit(.Year, value: -18, toDate: NSDate(), options: [])
        sender.minimumDate = NSCalendar.currentCalendar().dateByAddingUnit(.Year, value: -60, toDate: NSDate(), options: [])
        dateFormatter.dateFormat = "dd-MM-yyyy"
        birthDate.text = dateFormatter.stringFromDate(sender.date)
    }
    
    func doneButton(sender:UIButton)
    {
        birthDate.resignFirstResponder() // To resign the inputView on clicking done.
    }
    
    @IBOutlet weak var birthDate: UITextField!
    var data = ["male", "female"]
    var picker = UIPickerView()
    
    // @IBOutlet weak var myDatePicker: UIDatePicker!
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    @IBOutlet weak var repeatPasswordTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    
    @IBOutlet weak var userEmailTextField: UITextField!
    
    @IBOutlet weak var patientName: UITextField!
    
    
    @IBOutlet weak var phoneNo: UITextField!
    
    @IBOutlet weak var relationShip: UITextField!
    
    @IBOutlet weak var relativePhoneNo: UITextField!
    
    @IBOutlet weak var genderTextField: UITextField!
    
  
   var labelText = String()   
    
    func textFieldShouldReturn(userText: UITextField) -> Bool {
        userText.resignFirstResponder()
        return true;
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        scrollView.contentSize.height = 1100
        //scrollView.contentSize.width = 10
      
    
        
        //for gender
        
        picker.delegate = self
        picker.dataSource = self
        genderTextField.inputView = picker
        
        //for date of birth
        

        
        self.repeatPasswordTextField.delegate = self
        self.phoneNo.delegate = self
        self.relationShip.delegate = self
        self.genderTextField.delegate = self
   
        self.relativePhoneNo.delegate = self
        self.patientName.delegate = self
        self.userEmailTextField.delegate = self
        self.userPasswordTextField.delegate = self
        
      
        
        labelText = userEmailTextField.text!
        
  
        
        
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data.count
    }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        genderTextField.text = data[row]
       
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data[row]
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func registerButton(sender: AnyObject) {
        
        let pName = patientName.text
        let userEmail = userEmailTextField.text
        let userPassword = userPasswordTextField.text
        let userRepeatPassword = repeatPasswordTextField.text
        let gender = genderTextField.text
        let pNo = phoneNo.text
        let relation = relationShip.text
        let RPhoneNo = relativePhoneNo.text
        let bDate = birthDate.text
      
        
        //check for empty fields
        
        if( pName!.isEmpty || userEmail!.isEmpty || userPassword!.isEmpty || userRepeatPassword!.isEmpty || gender!.isEmpty || bDate!.isEmpty || pNo!.isEmpty || relation!.isEmpty || RPhoneNo!.isEmpty) {
            // Display alert message
            displayMyAlertMessage("All fields are required")
            
            return
        }
        
        // Check if password match
        if(userPassword != userRepeatPassword) {
            // Display an alert message
            displayMyAlertMessage("Passwords do not match")
            return
        }
        // Store Data
        NSUserDefaults.standardUserDefaults().setObject(userEmail, forKey: "userEmail")
        NSUserDefaults.standardUserDefaults().setObject(userPassword, forKey: "userPassword")
         NSUserDefaults.standardUserDefaults().setObject(pName, forKey: "pName")
         NSUserDefaults.standardUserDefaults().setObject(pNo, forKey: "pNo")
         NSUserDefaults.standardUserDefaults().setObject(gender, forKey: "gender")
         NSUserDefaults.standardUserDefaults().setObject(relation, forKey: "relation")
        NSUserDefaults.standardUserDefaults().synchronize()
        
        
        // Display alert message with confirmation
        
        let myAlert = UIAlertController(title: "Alert", message: "Registration is suceeded", preferredStyle: .Alert)
        let okAction = UIAlertAction(title: "OK", style: .Default) { (_) -> Void in
            self.dismissViewControllerAnimated(true, completion: nil)
        }
        myAlert.addAction(okAction)
        self.presentViewController(myAlert, animated: true, completion: nil)
    }
    
    
    
    
    func displayMyAlertMessage(userMessage:String) {
        let myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: .Alert)
        let okAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
        myAlert.addAction(okAction)
        self.presentViewController(myAlert, animated: true, completion: nil)
    }
    
    
    @IBAction func HaveAnAccount(sender: AnyObject) {
 
    }
    
  
    
    


}
