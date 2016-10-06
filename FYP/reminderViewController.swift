//
//  reminderViewController.swift
//  
//
//  Created by Waqar Khalid on 6/10/16.
//
//

import UIKit
import EventKit

class reminderViewController: UIViewController {
    var date:NSDate?
    
    @IBAction func timeFunction(sender: UITextField) {
        let inputView = UIView(frame: CGRectMake(0, 0, self.view.frame.width, 240))
        
        
        let datePickerView1  : UIDatePicker = UIDatePicker(frame: CGRectMake(0, 40, 0, 0))
        datePickerView1.datePickerMode = UIDatePickerMode.DateAndTime
        inputView.addSubview(datePickerView1) // add date picker to UIView
        
        
        
        sender.inputView = inputView
        datePickerView1.addTarget(self, action: #selector(reminderViewController.handleDatePicker(_:)), forControlEvents: UIControlEvents.ValueChanged)
        
        handleDatePicker(datePickerView1) // Set the date on start.

    }
    
    @IBAction func addReminder(sender: AnyObject) {
     let time = timeTextField.text
        let dosage = dosageTextField.text
        let drug = drugnameTextField.text
        if ( time!.isEmpty || dosage!.isEmpty || drug!.isEmpty) {
           alertmessage("All fields are required for adding reminder")
        }
        else {
        let eventStore = EKEventStore()
      
       
        eventStore.requestAccessToEntityType( EKEntityType.Event, completion:{(granted, error) in
            
            if (granted) && (error == nil) {
                print("granted \(granted)")
                print("error \(error)")
                
                let event = EKEvent(eventStore: eventStore)
                
                let alarm = EKAlarm(absoluteDate: self.date!)
                event.addAlarm(alarm)
                event.title = "Take \(self.drugnameTextField.text!)"
                event.startDate = self.date!
                event.endDate = self.date!
                event.notes = self.dosageTextField.text!
                
                event.calendar = eventStore.defaultCalendarForNewEvents
                
                var event_id = ""
                do{
                    try eventStore.saveEvent(event, span: .ThisEvent)
                    event_id = event.eventIdentifier
                }
                catch let error as NSError {
                    print("json error: \(error.localizedDescription)")
                }
                
                if(event_id != ""){
                    
                    print("event added !")
                   
                }
                
            }
        })
 self.displayMyAlertMessage("Medicine Reminder added")
    }
    }
    func handleDatePicker(sender: UIDatePicker) {
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy 'at' hh:mm"
        date = sender.date
        sender.minimumDate = NSDate()
        timeTextField.text = dateFormatter.stringFromDate(sender.date)
    }
    
    func displayMyAlertMessage(userMessage:String) {
        let myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: .Alert)
        let okAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
        myAlert.addAction(okAction)
        self.presentViewController(myAlert, animated: true, completion: nil)
    }
    

    @IBOutlet weak var timeTextField: UITextField!
    @IBOutlet weak var dosageTextField: UITextField!
    @IBOutlet weak var drugnameTextField: UITextField!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    func alertmessage(usermessage:String) {
        let myalert = UIAlertController(title: "Caution", message: usermessage, preferredStyle: .Alert)
        let actionbutton = UIAlertAction(title: "OK", style: .Cancel, handler: nil)
        myalert.addAction(actionbutton)
        self.presentViewController(myalert, animated: true, completion: nil)
    
    }
}
