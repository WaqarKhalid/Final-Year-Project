//
//  File.swift
//  dynamicTable
//
//  Created by Sana Qadir on 4/20/16.
//  Copyright © 2016 Sana Qadir. All rights reserved.
//

import Foundation
import UIKit

class FirstAidTableTextView : UIViewController {
    
   
   
    
    @IBOutlet weak var TextView: UITextView!
        {
        didSet {
            TextView.attributedText =  text
            self.automaticallyAdjustsScrollViewInsets = false
        }
        
    }
    
    var text = NSAttributedString() {
        didSet {
            TextView?.attributedText = text as NSAttributedString
            history = "\(date),\n,\(text.string)"
        }
    }

    
    var FirstString = String()
    
    override func viewDidLoad() {
        
        
        TextView.text =  FirstString
        
    }
    
}