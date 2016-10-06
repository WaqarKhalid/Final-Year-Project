//
//  eyePainSwitchesPage.swift
//  FYP
//
//  Created by Waqar Khalid on 4/2/16.
//  Copyright © 2016 Waqar Khalid. All rights reserved.
//

import UIKit

class eyePainSwitchesPage: UIViewController {

    @IBOutlet weak var headacheSwitch: UISwitch!
    @IBOutlet weak var HazinessSwitch: UISwitch!
    @IBOutlet weak var itchingSwitch: UISwitch!
    @IBOutlet weak var rednessSwitch: UISwitch!
    func attributedText()->NSAttributedString{
        
        let string = "Take:Moxifloxacin tablet(Avelox 400mg)(1+1) and use Betnovate Tube for eyes.\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\rRefered By:Dr Hasham,Allied Hospital Faisalabad"as NSString
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        
        let colorformedi = [ NSForegroundColorAttributeName: UIColor.redColor()]
        
        let boldFontAttribute = [NSFontAttributeName: UIFont.boldSystemFontOfSize(15.0)]
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        // Part of string to be bold
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("Moxifloxacin tablet(Avelox 400mg)(1+1) and use Betnovate Tube for eyes.\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\rRefered By:Dr Hasham,Allied Hospital Faisalabad"))
        attributedString.addAttributes(colorformedi, range: string.rangeOfString("Moxifloxacin tablet(Avelox 400mg)(1+1) and use Betnovate Tube for eyes"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Take:"))
        
        
        
        // 4
        
        return attributedString
        
    }
    func attributedText2()->NSAttributedString{
        
        let string = "Caution:\r \t\t You may have eyesight issue,see your Doctor" as NSString
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let colorforheading = [ NSForegroundColorAttributeName: UIColor.redColor() ]
        
        
        let boldFontAttribute = [NSFontAttributeName: UIFont.boldSystemFontOfSize(15.0)]
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        // Part of string to be bold
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("You may have eyesight issue,see your Doctor"))
        
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Caution:"))
        
        attributedString.addAttributes(colorforheading, range: string.rangeOfString("Caution:"))
        
        
        // 4
        
        return attributedString
        
    }


    
    private struct History {
        
        static let segueIdentifier = "next2"
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if let identifier = segue.identifier {
            switch identifier  {
                
            case History.segueIdentifier:
                if HazinessSwitch.on || itchingSwitch.on || rednessSwitch.on{
                    
                    if let tvc = segue.destinationViewController as? headache_textview {
                        tvc.text = attributedText()
                    }
                    
                }
                if headacheSwitch.on{
                    if let tvc = segue.destinationViewController as? headache_textview {
                        tvc.text = attributedText2()
                    }
                }
                
            default:break
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
