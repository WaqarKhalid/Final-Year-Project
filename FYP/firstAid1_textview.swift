//
//  headache textview.swift
//  FYP
//
//  Created by Waqar Khalid on 3/31/16.
//  Copyright © 2016 Waqar Khalid. All rights reserved.
//

import UIKit

class firstAid1_textview: UIViewController {
    
    
    
    @IBOutlet weak var textView: UITextView!{
        didSet {
        
            textView.attributedText = text
           // self.automaticallyAdjustsScrollViewInsets = false
           // textView.contentOffset = CGPointMake(0, -textView.contentSize.height)
           
        }
        
    }
    
    

    
    
    
    var text = NSAttributedString() {
        didSet {
            textView?.attributedText = text as NSAttributedString
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    override func viewWillLayoutSubviews() {
        textView.scrollRangeToVisible(NSMakeRange(0, 0))
        super.viewWillLayoutSubviews()
        
        //start scroll at top of text
            }


    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}



