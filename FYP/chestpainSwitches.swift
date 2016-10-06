//
//  chestpainSwitches.swift
//  FYP
//
//  Created by Waqar Khalid on 4/11/16.
//  Copyright © 2016 Waqar Khalid. All rights reserved.
//

import UIKit

class chestpainSwitches: UIViewController {

    @IBOutlet weak var movetoShoulderSwitch: UISwitch!
    @IBOutlet weak var incBreathSwitch: UISwitch!
    @IBOutlet weak var afterEatingSwitch: UISwitch!
    @IBOutlet weak var heartBurningSwitch: UISwitch!
    private struct History {
        
        static let segueIdentifier = "next"
    }
    
    func attributedText()->NSAttributedString{
        
        let string = "Take:\r\tRisek 40 mg only once for every 24 hour.\rDirections:\r\tTake the medicine in the morning before you eat breakfast.\rIt may take up to 4 days for full effect.\rDo not take more than one tablet every 24 hours.\r\r Or Use rabeprazole(1+1) 30 minutes before meal+Maxolon(1+1) 30 minutes before meal\rComplications:\r\tHeartburn that occurs frequently and interferes with your routine is considered gastroesophageal reflux disease (GERD). GERD treatment may require prescription medications and, occasionally, surgery or other procedures. GERD can seriously damage your esophagus.\r\r\r\r\r\r\r\r\r\r\r\r\r\rPrescribedBy:Dr Hasham,Allied Hospital Faisalabad." as NSString
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        
        let boldFontAttribute = [NSFontAttributeName: UIFont.boldSystemFontOfSize(15.0)]
         let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        let colorformedi = [NSForegroundColorAttributeName:UIColor.blueColor()]
         let complications = [NSForegroundColorAttributeName:UIColor.redColor()]
        // Part of string to be bold
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("Risek 40 mg"))
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("Complications"))
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("rabeprazole(1+1)"))
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("Maxolon(1+1)"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Take"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Directions:"))
        attributedString.addAttributes(colorformedi, range: string.rangeOfString("Risek 40 mg"))
        attributedString.addAttributes(colorformedi, range: string.rangeOfString("rabeprazole(1+1)"))
        attributedString.addAttributes(colorformedi, range: string.rangeOfString("Maxolon(1+1)"))
        attributedString.addAttributes(complications, range: string.rangeOfString("Complications"))
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("PrescribedBy:Dr Hasham,Allied Hospital Faisalabad."))
        // 4
        print(attributedString)
        return attributedString
        
    }
    func attributedText2()->NSAttributedString{
        
        let string = "Take:\r\t\tAny painkiller i.e Cataflam for instant relief.\r\r\r\rDos and Donts:\r\t\tDo not overuse any painkiller,it may harm you.\rDo not take painkillers if you have heart disease or any liver disease.\rInject Dicloran Injection by any specialist as a proper treatment of body pain\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\rPrescribed By:Dr Hasham,Allied Hospital Faisalabad"as NSString
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        
        let colorformedi = [ NSForegroundColorAttributeName: UIColor.blueColor()]
        
        let boldFontAttribute = [NSFontAttributeName: UIFont.boldSystemFontOfSize(15.0)]
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        // Part of string to be bold
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("Any painkiller i.e Cataflam for instant relief.\r\r\r\rDos and Donts:\r\t\tDo not overuse any painkiller,it may harm you.\rDo not take painkillers if you have heart disease or any liver disease.\rInject Dicloran Injection by any specialist as a proper treatment of body pain\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\rPrescribed By:Dr Hasham,Allied Hospital Faisalabad"))
        attributedString.addAttributes(colorformedi, range: string.rangeOfString("Cataflam"))
        attributedString.addAttributes(colorformedi, range: string.rangeOfString("heart disease or any Liver disease"))
        attributedString.addAttributes(colorformedi, range: string.rangeOfString("Dicloran"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Take:"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Dos and Donts:"))
        
        
        // 4
        
        return attributedString
        
    }
    func attributedText3()->NSAttributedString{
        
        let string = "Caution:\r \t\t Go to Emergency" as NSString
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let colorforheading = [ NSForegroundColorAttributeName: UIColor.redColor() ]
        
        
        let boldFontAttribute = [NSFontAttributeName: UIFont.boldSystemFontOfSize(15.0)]
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        // Part of string to be bold
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("Go to Emergency"))
        
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Caution:"))
        
        attributedString.addAttributes(colorforheading, range: string.rangeOfString("Caution:"))
        attributedString.addAttributes(colorforheading, range: string.rangeOfString("Emergency"))
        
        
        // 4
        
        return attributedString
        
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if let identifier = segue.identifier {
            switch identifier  {
                
            case History.segueIdentifier:
                if afterEatingSwitch.on || heartBurningSwitch.on{
                    
                    if let tvc = segue.destinationViewController as? headache_textview {
                        tvc.text = attributedText()
                    }
                    
                }
                if incBreathSwitch.on {
                    if let tvc = segue.destinationViewController as? headache_textview {
                        tvc.text = attributedText2()
                    }
                }
                
                if movetoShoulderSwitch.on {
                    if let tvc = segue.destinationViewController as? headache_textview {
                        tvc.text = attributedText3()
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
