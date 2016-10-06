//
//  foodPoisoningSwitches.swift
//  FYP
//
//  Created by Waqar Khalid on 4/7/16.
//  Copyright © 2016 Waqar Khalid. All rights reserved.
//

import UIKit

class foodPoisoningSwitches: UIViewController {
 
    
    
    @IBOutlet weak var vomitingSwitch: UISwitch!
    @IBOutlet weak var diarrheaSwitch: UISwitch!
    @IBOutlet weak var painInBellySwitch: UISwitch!
    
    private struct History {
        
        static let segueIdentifier = "next5"
    }
    func attributedText()->NSAttributedString{
        
        let string = "Take:\r\tRisek 40 mg only once for every 24 hour.\rDirections:\r\tTake the medicine in the morning before you eat breakfast.\rIt may take up to 4 days for full effect.\rDo not take more than one tablet every 24 hours.\r\r Or Use rabeprazole(1+1) 30 minutes before meal+Maxolon(1+1) 30 minutes before meal.\rDo's and Don'ts:\r\t1.Do not eat or drink anything for several hours after vomiting.\r2.Sip small amounts of water or suck ice chips every 15 minutes for 3-4 hours.\r3.Next sip clear liquids every 15 minutes for 3-4 hours.\r4.Examples include water, sports drinks, flat soda, clear broth, gelatin, flavored ice or apple juice.\r5.Do not drink citrus juices or milk.\r6.Increase fluids as tolerated.\r7.When you can tolerate clear liquids for several hours without vomiting and if you're hungry, try eating small amounts of bland foods.\r8.Try foods such as bananas, rice, applesauce, dry toast, soda crackers (these foods are called BRAT diet).\r9.For 24-48 hours after the last episode of vomiting, avoid foods that can irritate or may be difficult to digest such alcohol, caffeine, fats/oils, spicy food, milk or cheese.\r10.When you can tolerate bland food, you can resume your normal diet.\rComplications:The most common serious complication of food poisoning is dehydration — a severe loss of water and essential salts and minerals. If you're a healthy adult and drink enough to replace fluids you lose from vomiting and diarrhea, dehydration shouldn't be a problem.Infants, older adults and people with suppressed immune systems or chronic illnesses may become severely dehydrated when they lose more fluids than they can replace. In that case, they may need to be hospitalized and receive intravenous fluids. In extreme cases, dehydration can be fatal.\r\tSome types of food poisoning have potentially serious complications for certain people. These include:\rListeria monocytogenes:\r\tComplications of a listeria food poisoning may be most severe for an unborn baby. Early in pregnancy, a listeria infection may lead to miscarriage. Later in pregnancy, a listeria infection may lead to stillbirth, premature birth or a potentially fatal infection in the baby after birth — even if the mother was only mildly ill. Infants who survive a listeria infection may experience long-term neurological damage and delayed development.\rEscherichia coli (E. coli):\r\t Certain E. coli strains can cause a serious complication called hemolytic uremic syndrome. This syndrome damages the lining of the tiny blood vessels in the kidneys, sometimes leading to kidney failure. Older adults, children younger than 5 and people with weakened immune systems have a higher risk of developing this complication. If you're in one of these risk categories, see your doctor at the first sign of profuse or bloody diarrhea.\r\rPrescribedBy:Dr Hasham,Allied Hospital Faisalabad." as NSString
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        
        let boldFontAttribute = [NSFontAttributeName: UIFont.boldSystemFontOfSize(15.0)]
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        let colorformedi = [NSForegroundColorAttributeName:UIColor.blueColor()]
        // Part of string to be bold
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("Risek 40 mg"))
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("Complications"))
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("Listeria monocytogenes"))
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("Escherichia coli (E. coli)"))

        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("rabeprazole(1+1)"))
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("Maxolon(1+1)"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Take"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Do's and Don'ts:"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Directions:"))
        attributedString.addAttributes(colorformedi, range: string.rangeOfString("Risek 40 mg"))
        attributedString.addAttributes(colorformedi, range: string.rangeOfString("rabeprazole(1+1)"))
        attributedString.addAttributes(colorformedi, range: string.rangeOfString("Maxolon(1+1)"))
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("PrescribedBy:Dr Hasham,Allied Hospital Faisalabad."))
        let complicatons = [NSForegroundColorAttributeName:UIColor.redColor()]
        attributedString.addAttributes(complicatons, range: string.rangeOfString("Complications:"))
        return attributedString
        
    }
    func attributedText2()->NSAttributedString{
        
        let string = "Take:\r\tImmodium Capsule once a day for 2-3 days.And use ORS\rDo's and Don'ts:\r\t.If having diharea then use as much water as you can\r2.Sip small amounts of water or suck ice chips every 15 minutes for 3-4 hours.\r3.Next sip clear liquids every 15 minutes for 3-4 hours.\r4.Examples include water, sports drinks, flat soda, clear broth, gelatin, flavored ice or apple juice.\r5.Do not drink citrus juices or milk.\r6.Increase fluids as tolerated.\r7.if you're hungry, try eating small amounts of bland foods.\r8.Try foods such as bananas, rice, applesauce, dry toast, soda crackers (these foods are called BRAT diet).\r9.Don't eat only bland foods. The old advice was to stick with a liquid diet for a few days and then to add in bland foods, such as the BRAT diet of bananas, rice, applesauce, and toast. That's fine for the first day or so of stomach flu. However, doctors say that you should return to your normal diet as soon as you feel up to it. BRAT foods aren't bad. They just don't provide the fat and protein that you need. Sticking with them too long could actually slow your recovery.\r\r\r\rPrescribedBy:Dr Hasham,Allied Hospital Faisalabad." as NSString
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        
        let boldFontAttribute = [NSFontAttributeName: UIFont.boldSystemFontOfSize(15.0)]
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        let colorformedi = [NSForegroundColorAttributeName:UIColor.blueColor()]
        // Part of string to be bold
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("Immodium Capsule"))
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("ORS"))
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("Don't eat only bland foods"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Take"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Do's and Don'ts:"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Directions:"))
        attributedString.addAttributes(colorformedi, range: string.rangeOfString("Immodium Capsule"))
        attributedString.addAttributes(colorformedi, range: string.rangeOfString("ORS"))
       
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("PrescribedBy:Dr Hasham,Allied Hospital Faisalabad."))
        // 4
        print(attributedString)
        return attributedString
        
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if let identifier = segue.identifier {
            switch identifier  {
                
            case History.segueIdentifier:
                if painInBellySwitch.on || vomitingSwitch.on{
                   
                    if let tvc = segue.destinationViewController as? headache_textview {
                    tvc.text = attributedText()
                    }
                    
                }
                if diarrheaSwitch.on {
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
