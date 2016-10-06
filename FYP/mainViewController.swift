//
//  mainViewController.swift
//  FYP
//
//  Created by Waqar Khalid on 4/1/16.
//  Copyright © 2016 Waqar Khalid. All rights reserved.
//

import UIKit

//mainview
class mainViewController: UIViewController {


    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.contentSize.height = 1000
        scrollView.contentSize.width = 1000
        
        let blurEffect = UIBlurEffect(style: .Light)
        
        let blurView = UIVisualEffectView(effect: blurEffect)
       // blurView.frame.size = CGSize(width: 500, height: 500)
      // blurView.backgroundColor = scrollView.backgroundColor
        
        scrollView.addSubview(blurView)
        
    }


   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func donebutton(sender: AnyObject)
    {
        self.performSegueWithIdentifier("segue", sender: self)
    }

   
}
