//
//  sourthroatSwitchesPage.swift
//  FYP
//
//  Created by Waqar Khalid on 4/2/16.
//  Copyright © 2016 Waqar Khalid. All rights reserved.
//

import UIKit

class sourthroatSwitchesPage: UIViewController {
 
    @IBOutlet weak var tonsilsSwitch: UISwitch!
    @IBOutlet weak var coughSwitch: UISwitch!
    @IBOutlet weak var throatPainSwitch: UISwitch!
    @IBOutlet weak var feverSwitch: UISwitch!
    
    func attributedText()->NSAttributedString{
        
        let string = "Take:\r\t\tClarithromycin 250mg every 12 hours for 10 days.\ror\rtake Amoxil Capsule(1+1+1).\r\r\rComplications:\r\t\t\t\tRarely, bacterial infections of the throat can lead to complications including abscess formation and spread of the infection. Rheumatic fever (a condition that can cause damage to the heart, nerves, skin, and joints) and poststreptococcal glomerulonephritis (a form of kidney inflammation) are rare complications of untreated strep throat.\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\rPrescribed By:Dr Hasham,Allied Hospital Faisalabad"as NSString
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        
        let colorformedi = [ NSForegroundColorAttributeName: UIColor.blueColor()]
        
        let boldFontAttribute = [NSFontAttributeName: UIFont.boldSystemFontOfSize(15.0)]
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        // Part of string to be bold
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("Clarithromycin 250mg every 12 hours for 10 days.\ror\rtake Amoxil Capsule(1+1+1).\r\r\rComplications:\r\t\t\t\tRarely, bacterial infections of the throat can lead to complications including abscess formation and spread of the infection. Rheumatic fever (a condition that can cause damage to the heart, nerves, skin, and joints) and poststreptococcal glomerulonephritis (a form of kidney inflammation) are rare complications of untreated strep throat.\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\rPrescribed By:Dr Hasham,Allied Hospital Faisalabad"))
        attributedString.addAttributes(colorformedi, range: string.rangeOfString("Clarithromycin 250mg every 12 hours for 10 days.\ror\rtake Amoxil Capsule(1+1+1)."))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Take:"))
        let complicatons = [NSForegroundColorAttributeName:UIColor.redColor()]
        attributedString.addAttributes(complicatons, range: string.rangeOfString("Complications:"))
        
        
        // 4
        
        return attributedString
        
    }
    func attributedText2()->NSAttributedString{
        
        let string = "Take:\r\t\tLevofloxacin 500mg one every 24hour for 7 days+for fever see medicine in the fever section.\r\rComplications:\r\t\t\tRarely, bacterial infections of the throat can lead to complications including abscess formation and spread of the infection. Rheumatic fever (a condition that can cause damage to the heart, nerves, skin, and joints) and poststreptococcal glomerulonephritis (a form of kidney inflammation) are rare complications of untreated strep throat.\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\rPrescribed By:Dr Hasham,Allied Hospital Faisalabad"as NSString
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        
        let colorformedi = [ NSForegroundColorAttributeName: UIColor.blueColor()]
        
        let boldFontAttribute = [NSFontAttributeName: UIFont.boldSystemFontOfSize(15.0)]
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        // Part of string to be bold
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("Levofloxacin 500mg one every 24hour for 7 days+for fever see medicine in the fever section.\r\rComplications:\r\t\t\tRarely, bacterial infections of the throat can lead to complications including abscess formation and spread of the infection. Rheumatic fever (a condition that can cause damage to the heart, nerves, skin, and joints) and poststreptococcal glomerulonephritis (a form of kidney inflammation) are rare complications of untreated strep throat.\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\rPrescribed By:Dr Hasham,Allied Hospital Faisalabad"))
        attributedString.addAttributes(colorformedi, range: string.rangeOfString("Levofloxacin 500mg one every 24hour for 7 days+for fever see medicine in the fever section."))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Take:"))
        let complicatons = [NSForegroundColorAttributeName:UIColor.redColor()]
        attributedString.addAttributes(complicatons, range: string.rangeOfString("Complications:"))
        
        
        // 4
        
        return attributedString
        
    }

    func attributedText3()->NSAttributedString{
        
        let string = "For fever see medicine in the fever section "as NSString
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        
        let colorformedi = [ NSForegroundColorAttributeName: UIColor.blueColor()]
        
        let boldFontAttribute = [NSFontAttributeName: UIFont.boldSystemFontOfSize(15.0)]
       
        
        // Part of string to be bold
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("For fever see medicine in the fever section "))
        attributedString.addAttributes(colorformedi, range: string.rangeOfString("For fever see medicine in the fever section"))
        
        
        
        
        // 4
        
        return attributedString
        
    }
    func attributedText4()->NSAttributedString{
        
        let string = "For Cough see Cough section"as NSString
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        
        let colorformedi = [ NSForegroundColorAttributeName: UIColor.blueColor()]
        
        let boldFontAttribute = [NSFontAttributeName: UIFont.boldSystemFontOfSize(15.0)]
        
        
        // Part of string to be bold
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("For Cough see Cough section"))
        attributedString.addAttributes(colorformedi, range: string.rangeOfString("For Cough see Cough section"))
        
        
        
        
        // 4
        
        return attributedString
        
    }


    private struct History {
        
        static let segueIdentifier = "next4"
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if let identifier = segue.identifier {
            switch identifier  {
                
            case History.segueIdentifier:
                if tonsilsSwitch.on || throatPainSwitch.on {
                    
                    if let tvc = segue.destinationViewController as? headache_textview {
                        tvc.text = attributedText()
                    }
                    
                }
                if (tonsilsSwitch.on) && coughSwitch.on && throatPainSwitch.on && feverSwitch.on {
                    if let tvc = segue.destinationViewController as? headache_textview {
                        tvc.text = attributedText2()
                    }
                }
                if coughSwitch.on && feverSwitch.on {
                    if let tvc = segue.destinationViewController as? headache_textview {
                        tvc.text = attributedText2()
                    }

                }
                if feverSwitch.on {
                    if let tvc = segue.destinationViewController as? headache_textview {
                        tvc.text = attributedText3()
                    }
                    
                }
                if feverSwitch.on && (throatPainSwitch.on || tonsilsSwitch.on)  {
                    if let tvc = segue.destinationViewController as? headache_textview {
                        tvc.text = attributedText2()
                    }
                    
                }
                if coughSwitch.on {
                    if let tvc = segue.destinationViewController as? headache_textview {
                        tvc.text = attributedText4()
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
