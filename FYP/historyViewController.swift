//
//  historyViewController.swift
//  FYP
//
//  Created by Waqar Khalid on 4/23/16.
//  Copyright © 2016 Waqar Khalid. All rights reserved.
//

import UIKit

class historyViewController: UIViewController {
    
  
    @IBAction func historyShareButton(sender: AnyObject) {
        let activityItem:NSURL = NSURL(fileURLWithPath:pathForfile)
        let activityVC = UIActivityViewController(activityItems: [activityItem], applicationActivities: nil)
        self.presentViewController(activityVC, animated: true, completion: nil)
    }
    
    
    @IBAction func Back(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
 
    @IBOutlet weak var textView: UITextView! {
        didSet {
            let error:NSError?
            do {
                let filetoberetrieved = try String(contentsOfFile: pathForfile, encoding: NSUTF8StringEncoding)
                textView.text = filetoberetrieved
              
                
            }
            catch {
                print(error)
            }
        }
    }

   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        textView.setContentOffset(CGPointZero, animated: false)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
