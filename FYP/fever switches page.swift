//
//  fever switches page.swift
//  FYP
//
//  Created by Waqar Khalid on 4/2/16.
//  Copyright © 2016 Waqar Khalid. All rights reserved.
//

import UIKit

class fever_switches_page: UIViewController {
    override func  preferredStatusBarStyle()-> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    @IBOutlet weak var bodypainswitch: UISwitch!
    
    @IBOutlet weak var sweatingswitch: UISwitch!
    
    @IBOutlet weak var feelingcoldswitch: UISwitch!
    
    @IBOutlet weak var suddencoldswitch: UISwitch!
    func attributedText()->NSAttributedString{
        
        let string = "Take:\r\rFor Adults:\r\t\tAny antiPyrectic i.e ibuprofen 200mg (1+1+1)\r\t\tor \rPeracetamol(1+1).\rFor 6months to 12 years:\r\t\t\t\t 5 mg/kg/dose for temperature less than 102.5 degrees F (1+1+1).10 mg/kg/dose for temperature greater than or equal to 102.5 degrees F (1+1+1).The recomomended daily maximum dosage is 40mg/kg.\r\r\rComplications:\rSevere dehydration\rHallucinations\rFever-induced seizure (febrile seizure), in a small number of children ages 6 months to 5 years\r\r\r\r\r\r\r\r\r\rPrescribed By:Dr Hasham,Allied Hospital Faisalabad" as NSString
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
      
        let colorformedi = [ NSForegroundColorAttributeName: UIColor.blueColor()]
        
        let boldFontAttribute = [NSFontAttributeName: UIFont.boldSystemFontOfSize(17.0)]
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        // Part of string to be bold
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("ibuprofen 200mg (1+1+1)"))
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("Peracetamol(1+1)"))
        attributedString.addAttributes(colorformedi, range: string.rangeOfString("ibuprofen 200mg (1+1+1)"))
        attributedString.addAttributes(colorformedi, range: string.rangeOfString("Peracetamol"))
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("Prescribed By:Dr Hasham,Allied Hospital Faisalabad"))
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("Complications"))
         attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Take:"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("For Adults:"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("For 6months to 12 years:"))

        
        
        // 4
       
        return attributedString
        
    }

    func attributedText2()->NSAttributedString{
        
        let string = "Caution:\r \t\t You have high grade fever.See your doctor" as NSString
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let colorforheading = [ NSForegroundColorAttributeName: UIColor.redColor() ]
       
        
        let boldFontAttribute = [NSFontAttributeName: UIFont.boldSystemFontOfSize(15.0)]
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        // Part of string to be bold
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("You have high grade fever.See your doctor"))
        
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Caution:"))
        
         attributedString.addAttributes(colorforheading, range: string.rangeOfString("Caution:"))
        
        
        // 4
        
        return attributedString
        
    }

    private struct History {
        
        static let segueIdentifier = "next1"
    }
  

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if let identifier = segue.identifier {
            switch identifier  {
                
            case History.segueIdentifier:
                if bodypainswitch.on || sweatingswitch.on{
                
                        if let tvc = segue.destinationViewController as? headache_textview {
                            tvc.text = attributedText()
                        }
                    
                }
                if feelingcoldswitch.on || suddencoldswitch.on{
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
