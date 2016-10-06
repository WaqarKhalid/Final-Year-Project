//
//  backTableVC.swift
//  sidemanu
//
//  Created by Waqar Khalid on 4/12/16.
//  Copyright © 2016 Waqar Khalid. All rights reserved.
//

import Foundation

class backTableVC : UITableViewController
{
    @IBOutlet weak var emailLabel: UILabel! {
        didSet {
            NSUserDefaults.standardUserDefaults().synchronize()
            emailLabel.text = NSUserDefaults.standardUserDefaults().stringForKey("labelname")
            print("This is label name in email label \(labelname)")
        }
    }
   var labelname:String = "" {
        didSet {
            emailLabel?.text = labelname
            
         NSUserDefaults.standardUserDefaults().setObject(labelname, forKey: "labelname")
            NSUserDefaults.standardUserDefaults().synchronize()
           print("This is label name when label name changed \(labelname)")
            print("This is email label when label name changed \(emailLabel?.text)")
        }
    }
   /* var TableArray = [String]()
    override func viewDidLoad() {
        TableArray = ["History" ,"Log Out"]
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TableArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(TableArray[indexPath.row], forIndexPath: indexPath) as UITableViewCell
        cell.textLabel?.text = TableArray[indexPath.row]
        return cell
    }
*/
    
  
    @IBOutlet weak var nameLabel: UITableViewCell!
  
   
    
 
      //  let userEmailStored = NSUserDefaults.standardUserDefaults().stringForKey("nameLabel")
   

    @IBAction func logOut(sender: AnyObject) {
    
    
   
        NSUserDefaults.standardUserDefaults().setBool(false, forKey: "isUserLoggedIN")
        NSUserDefaults.standardUserDefaults().synchronize()
       // self.performSegueWithIdentifier("loginView", sender: self)
        
    }

        override func viewDidLoad() {
    super.viewDidLoad()
      

       

      //  nameLabel = labelText
    }
    
   
}
