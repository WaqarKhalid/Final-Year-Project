//
//  LoginForm.swift
//  FYP
//
//  Created by Sana Qadir on 4/1/16.
//  Copyright © 2016 Waqar Khalid. All rights reserved.
//

import UIKit

class LoginForm: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func login(sender: AnyObject) {
    

    let userEmail = emailTextField.text
    let userPassword = passwordTextField.text
    
    let userEmailStored = NSUserDefaults.standardUserDefaults().stringForKey("userEmail")
    
    let userPasswordStored = NSUserDefaults.standardUserDefaults().stringForKey("userPassword")
    
    if(userEmailStored == userEmail)
    {
    if( userPasswordStored == userPassword )
    {
    NSUserDefaults.standardUserDefaults().setBool(true, forKey: "isUserLoggedIn")
    NSUserDefaults.standardUserDefaults().synchronize()
    
    self.dismissViewControllerAnimated(true, completion: nil)
    }
    }
    }
    


}
