//
//  LoginViewController.swift
//  UserLoginAndRegistration
//
//  Created by Waqar Khalid on 3/19/16.
//  Copyright © 2016 Waqar Khalid. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var userPasswordTextField: UITextField!
    @IBOutlet weak var userEmailTextField: UITextField!
    var currentuseremail:String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        self.userEmailTextField.delegate = self
        self.userPasswordTextField.delegate = self
        
        // Do any additional setup after loading the view.
    }
    func textFieldShouldReturn(userText: UITextField) -> Bool {
        userText.resignFirstResponder()
        return true;
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    var userEmail:String?
    var userPassword:String?
    @IBAction func loginButton(sender: AnyObject) {
        if (userEmailTextField.text! != "")
        {
            userEmail = userEmailTextField.text}
        else {
            alert("Please Enter Your email")
        }
        if (userPasswordTextField != ""){
            userPassword = userPasswordTextField.text}
        else {
            alert("Please Enter Password")
        }
        let userEmailStored = NSUserDefaults.standardUserDefaults().stringForKey("userEmail")
        let userPasswordStored = NSUserDefaults.standardUserDefaults().stringForKey("userPassword")
        
        if(userEmailStored == userEmail) {
            if(userPasswordStored == userPassword) {
                // Login is Successfull
                currentuseremail = userEmail!
               
                NSUserDefaults.standardUserDefaults().setObject(currentuseremail, forKey: "currentuser")
                NSUserDefaults.standardUserDefaults().setBool(true, forKey: "isUserLoggedIN")

                NSUserDefaults.standardUserDefaults().synchronize()
                self.dismissViewControllerAnimated(true, completion: nil)
            }
        }
        else {
            let myAlert = UIAlertController(title: "Alert", message: "Email or Password doesn't match", preferredStyle: .Alert)
            let okAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
            myAlert.addAction(okAction)
            self.presentViewController(myAlert, animated: true, completion: nil)
            
        }

    }
    func alert(message:String) {
        let myalert = UIAlertController(title: "Alert", message: message, preferredStyle: .Alert)
        let action = UIAlertAction(title: "OK", style: .Default, handler: nil)
        myalert.addAction(action)
        self.presentViewController(myalert, animated: true, completion: nil)
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "labelname" {
            if let target = segue.destinationViewController as? backTableVC {
                target.labelname = currentuseremail
                //print(target.labelname)
                //print(currentuseremail)
            }
        }
    }
    override func viewDidDisappear(animated: Bool) {
        performSegueWithIdentifier("labelname", sender: self)
    }


}
