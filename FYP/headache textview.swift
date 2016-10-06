//
//  headache textview.swift
//  FYP
//
//  Created by Waqar Khalid on 3/31/16.
//  Copyright © 2016 Waqar Khalid. All rights reserved.
//

import UIKit
var history = String()
var date = String()
var searchPath = NSSearchPathForDirectoriesInDomains(.DocumentDirectory,.UserDomainMask, true).first! as String
var fileName = "/history.txt"
var pathForfile = searchPath.stringByAppendingString(fileName)
class headache_textview: UIViewController {
    @IBAction func shareButton(sender: AnyObject) {
        let activityItem:NSURL = NSURL(fileURLWithPath: pathForfile)
        let vc = UIActivityViewController(activityItems: [text], applicationActivities: nil)
        self.presentViewController(vc, animated: true, completion: nil)
    }
    
    @IBAction func saveButton(sender: AnyObject) {
        
        date = NSDateFormatter.localizedStringFromDate(NSDate(), dateStyle: NSDateFormatterStyle.MediumStyle, timeStyle: NSDateFormatterStyle.MediumStyle)
        history = "\n\(date)\n\(text.string)\n"
        print(pathForfile)
        var Error:NSError?
        var fileManager = NSFileManager.defaultManager()
        if(!fileManager.fileExistsAtPath(pathForfile)) {
            
            do {
                try history.writeToFile(pathForfile, atomically: true, encoding: NSUTF8StringEncoding)
            }
            catch {
                print(Error)
            }
            if(Error==nil) {
                print("info saved\(history)")
                var alert = UIAlertController(title: "Alert", message: "Prescription is saved in history,You can see it in history", preferredStyle: .Alert)
                var action = UIAlertAction(title: "OK", style:.Default, handler: nil)
                alert.addAction(action)
                self.presentViewController(alert, animated: true, completion: nil)
                
            }
            else {
                print(Error)
            }
        }
        else {
            print("file was already there")
            
            let dir = NSFileManager.defaultManager().URLsForDirectory(.DocumentDirectory,inDomains: .UserDomainMask).last!
            let fileurl = dir.URLByAppendingPathComponent("/history.txt")
            
            let string = "\(history)"
            let data = string.dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: false)!
            
            if NSFileManager.defaultManager().fileExistsAtPath(fileurl.path!) {
                do {
                    let fileHandle = try NSFileHandle(forWritingToURL: fileurl)
                    
                    fileHandle.seekToEndOfFile()
                    fileHandle.writeData(data)
                    fileHandle.closeFile()
                    var alert = UIAlertController(title: "Alert", message: "Prescription is saved in history,You can see it in history", preferredStyle: .Alert)
                    alert.addAction(UIAlertAction(title: "OK", style:UIAlertActionStyle.Default, handler: nil))
                    self.presentViewController(alert, animated: true, completion: nil)
                } catch {
                    print("Can't open fileHandle \(error)")
                }
            } else {
                do {
                    try data.writeToURL(fileurl, options: .DataWritingAtomic)
                    
                } catch {
                    print("Can't write \(error)")
                }
            }
        }
        
        
        
        
    }
    
    @IBOutlet weak var textView: UITextView! {
        didSet {
             //self.automaticallyAdjustsScrollViewInsets = false
            
        textView.attributedText = text
          //textView.contentOffset = CGPointMake(0, -textView.contentSize.height)
           
        }
        
    }
    
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        //start scroll at top of text
        textView.scrollRangeToVisible(NSMakeRange(0, 0))
    }

    
    
    
    var text = NSAttributedString() {
        didSet {
            textView?.attributedText = text as NSAttributedString
            history = "\n\(date),\n,\(text.string)"
        }
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.automaticallyAdjustsScrollViewInsets = false
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}



