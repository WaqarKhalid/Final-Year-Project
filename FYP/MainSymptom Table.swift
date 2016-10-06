//
//  MainSymptom Table.swift
//  FYP
//
//  Created by Waqar Khalid on 3/31/16.
//  Copyright © 2016 Waqar Khalid. All rights reserved.
//

import UIKit

class MainSymptom_Table: UITableViewController {
 

    private struct History {
        
        static let segueIdentifier = "bodypain"
        
        static let segueIdentifier2 = "earInfection"
        
        
        static let segueIdentifier3 = "backPain"
        static let segueIdentifier4 = "vomiting"
        static let segueIdentifier5 = "cough"
        static let segueIdentifier6 = "teeth"
        static let segueIdentifier7 = "blisters"
     
    }
    
    
    func attributedText()->NSAttributedString{
        
        let string = "Take:\r\t\tOne tablet of Peracetamol\r \t\tor \r\t\tibruprofen\r \t\tor \r\t\tNeproxen\r \t\tor \r\t\tArinac.                                                          \r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\rPrescribed By:Dr Hasham,Allied Hospital Faisalabad"as NSString
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        
        let colorformedi = [ NSForegroundColorAttributeName: UIColor.blueColor()]
        
        let boldFontAttribute = [NSFontAttributeName: UIFont.boldSystemFontOfSize(17.0)]
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        // Part of string to be bold
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("Peracetamol"))
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("ibruprofen"))
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("Neproxen"))
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("Arinac"))
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("Prescribed By:Dr Hasham,Allied Hospital Faisalabad"))
        
        attributedString.addAttributes(colorformedi, range: string.rangeOfString("Peracetamol"))
        attributedString.addAttributes(colorformedi, range: string.rangeOfString("ibruprofen"))
        attributedString.addAttributes(colorformedi, range: string.rangeOfString("Neproxen"))
        attributedString.addAttributes(colorformedi, range: string.rangeOfString("Arinac"))

        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Take:"))
        
        
        
        // 4
        
        return attributedString
        
    }
    
    func attributedText2()->NSAttributedString{
        
        let string = "Use:\r\t\tBetnovate Ear Drops 3 times a day.\rComplications:\r\t\tUntreated, ear infections can lead to more serious complications, including mastoiditis (a rare inflammation of a bone adjacent to the ear), hearing loss, perforation of the eardrum, meningitis, facial nerve paralysis, and possibly -- in adults -- Meniere's disease.\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\rPrescribed By:Dr Hasham,Allied Hospital Faisalabad"as NSString
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        
        let colorformedi = [ NSForegroundColorAttributeName: UIColor.blueColor()]
        
        let boldFontAttribute = [NSFontAttributeName: UIFont.boldSystemFontOfSize(15.0)]
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        // Part of string to be bold
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("Betnovate Ear Drops 3 times a day.\rComplications:\r\t\tUntreated, ear infections can lead to more serious complications, including mastoiditis (a rare inflammation of a bone adjacent to the ear), hearing loss, perforation of the eardrum, meningitis, facial nerve paralysis, and possibly -- in adults -- Meniere's disease.\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\rPrescribed By:Dr Hasham,Allied Hospital Faisalabad"))
        let complicatons = [NSForegroundColorAttributeName:UIColor.redColor()]
        attributedString.addAttributes(complicatons, range: string.rangeOfString("Complications:"))
        attributedString.addAttributes(colorformedi, range: string.rangeOfString("Betnovate Ear Drops 3 times a day."))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Use:"))
        
        
        
        // 4
        
        return attributedString
        
    }
    func attributedText3()->NSAttributedString{
    
        let string = "Take:\r\t\tAny painkiller i.e Cataflam for instant relief.\rDos and Donts:\r\t\tDo not overuse any painkiller,it may harm you.\rDo not take painkillers if you have heart disease or any liver disease.\rInject Dicloran Injection by any specialist as a proper treatment of body pain\rComplications:\r\tLow back pain can make any movement at the spine painful, rendering normal activities like sitting or walking almost impossible.\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\rPrescribed By:Dr Hasham,Allied Hospital Faisalabad"as NSString
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        
        let colorformedi = [ NSForegroundColorAttributeName: UIColor.blueColor()]
        
        let boldFontAttribute = [NSFontAttributeName: UIFont.boldSystemFontOfSize(15.0)]
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        // Part of string to be bold
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("Any painkiller i.e Cataflam for instant relief.\rDos and Donts:\r\t\tDo not overuse any painkiller,it may harm you.\rDo not take painkillers if you have heart disease or any liver disease.\rInject Dicloran Injection by any specialist as a proper treatment of body pain\rComplications:\r\tLow back pain can make any movement at the spine painful, rendering normal activities like sitting or walking almost impossible.\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\rPrescribed By:Dr Hasham,Allied Hospital Faisalabad"))
      
        attributedString.addAttributes(colorformedi, range: string.rangeOfString("Cataflam"))
        attributedString.addAttributes(colorformedi, range: string.rangeOfString("heart disease or any Liver disease"))
        attributedString.addAttributes(colorformedi, range: string.rangeOfString("Dicloran"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Take:"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Dos and Donts:"))
        let complicatons = [NSForegroundColorAttributeName:UIColor.redColor()]
        attributedString.addAttributes(complicatons, range: string.rangeOfString("Complications:"))
        
        // 4
        
        return attributedString
        
    }
    func attributedText4()->NSAttributedString{
        
        let string = "Take:\r\t\tRisek 40 mg usually once daily before a meal.\rOr Use Maxolon 10 mg 30 minutes before each meal and at bedtime.\rIf having Fever then take Flaygyl + Novidate (1+1+1)\rDo's and Don'ts:\r\t\t1.Do not eat or drink anything for several hours after vomiting.\r2.Sip small amounts of water or suck ice chips every 15 minutes for 3-4 hours.\r3.Next sip clear liquids every 15 minutes for 3-4 hours.\r4.Examples include water, sports drinks, flat soda, clear broth, gelatin, flavored ice or apple juice.\r5.Do not drink citrus juices or milk. Increase fluids as tolerated.\r6.When you can tolerate clear liquids for several hours without vomiting and if you're hungry, try eating small amounts of bland foods.\r7.Try foods such as bananas, rice, applesauce, dry toast, soda crackers (these foods are called BRAT diet).\r8.For 24-48 hours after the last episode of vomiting, avoid foods that can irritate or may be difficult to digest such alcohol, caffeine, fats/oils, spicy food, milk or cheese.When you can tolerate bland food, you can resume your normal diet.\rComplications:\rExcessive vomiting causes the body to lose water quickly. Severe cases of dehydration may need to be treated in the hospital\r\rPrescribed By:Dr Hasham,Allied Hospital Faisalabad"as NSString
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        
        let colorformedi = [ NSForegroundColorAttributeName: UIColor.blueColor()]
        
        let boldFontAttribute = [NSFontAttributeName: UIFont.boldSystemFontOfSize(15.0)]
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        // Part of string to be bold
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("Risek 40 mg usually once daily before a meal.\rOr Use Maxolon 10 mg 30 minutes before each meal and at bedtime.\rIf having Fever then take Flaygyl + Novidate (1+1+1)\rDo's and Don'ts:\r\t\t1.Do not eat or drink anything for several hours after vomiting.\r2.Sip small amounts of water or suck ice chips every 15 minutes for 3-4 hours.\r3.Next sip clear liquids every 15 minutes for 3-4 hours.\r4.Examples include water, sports drinks, flat soda, clear broth, gelatin, flavored ice or apple juice.\r5.Do not drink citrus juices or milk. Increase fluids as tolerated.\r6.When you can tolerate clear liquids for several hours without vomiting and if you're hungry, try eating small amounts of bland foods.\r7.Try foods such as bananas, rice, applesauce, dry toast, soda crackers (these foods are called BRAT diet).\r8.For 24-48 hours after the last episode of vomiting, avoid foods that can irritate or may be difficult to digest such alcohol, caffeine, fats/oils, spicy food, milk or cheese.When you can tolerate bland food, you can resume your normal diet.\r\rPrescribed By:Dr Hasham,Allied Hospital Faisalabad"))
      
        attributedString.addAttributes(colorformedi, range: string.rangeOfString("Risek 40 mg"))
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("Complications:"))
        attributedString.addAttributes(colorformedi, range: string.rangeOfString("Maxolon 10 mg"))
        attributedString.addAttributes(colorformedi, range: string.rangeOfString("Flaygyl + Novidate (1+1+1)"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Take:"))
         attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Do's and Don'ts:"))
        let complicatons = [NSForegroundColorAttributeName:UIColor.redColor()]
        attributedString.addAttributes(complicatons, range: string.rangeOfString("Complications:"))
        
        
        
    
        
        return attributedString
        
    }
    func attributedText5()->NSAttributedString{
        
        let string = "Take:\r\t\tHydralin Syrup one table supoon every 4 to 6 hours.\rDo's and Don'ts:\r\tAs it has alcohal in it so do not use it while driving or doing some machine work.\rDo not give it to children under 6 years of old.\rAlternatively use Prospan Syrup according  to the dosage written on packaging,its alcohal free.\rComplications:\rYou may get Tuberculosis (TB) if you have A bad cough that lasts 3 weeks or longer.\r\r\r\r\r\r\rr\r\r\r\r\r\r\r\r\r\rPrescribed By:Dr Hasham,Allied Hospital Faisalabad"as NSString
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        
        let colorformedi = [ NSForegroundColorAttributeName: UIColor.blueColor()]
        
        let boldFontAttribute = [NSFontAttributeName: UIFont.boldSystemFontOfSize(15.0)]
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        // Part of string to be bold
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("Hydralin Syrup"))
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("Prescribed By:Dr Hasham,Allied Hospital Faisalabad"))
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("Complications:"))
        let complicatons = [NSForegroundColorAttributeName:UIColor.redColor()]
        attributedString.addAttributes(complicatons, range: string.rangeOfString("Complications:"))
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("Prospan Syrup"))
        attributedString.addAttributes(colorformedi, range: string.rangeOfString("Prospan"))
    attributedString.addAttributes(colorformedi, range: string.rangeOfString("Hydralin Syrup"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Take:"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Do's and Don'ts:"))
        
        
        
        
        // 4
        
        return attributedString
        
    }
    func attributedText6()->NSAttributedString {
        let string = "Take:\r\tSynflex 275mg for instant relief.\rSee Your Doctor for proper treatment.\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\rPrescribedBy:Dr Hasham,Allied Hospital Faisalabad." as NSString
        let attributedString = NSMutableAttributedString(string: string as String,attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttribute = [NSFontAttributeName:UIFont.boldSystemFontOfSize(17.0)]
        let boldForheading = [NSFontAttributeName:UIFont.boldSystemFontOfSize(19.0)]
        let colorformedi = [NSForegroundColorAttributeName:UIColor.blueColor()]
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("Synflex 275mg"))
        attributedString.addAttributes(boldForheading, range: string.rangeOfString("Take"))
        attributedString.addAttributes(colorformedi, range: string.rangeOfString("Synflex 275mg"))
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("PrescribedBy:Dr Hasham,Allied Hospital Faisalabad."))
        return attributedString
    }
    func attributedText7()->NSAttributedString {
        let string = "Use:\r\tSomogel or Dactarain gel in mouth at infected areas.\rApply after every 4 hours.\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\rPrescribedBy:Dr Hasham,Allied Hospital Faisalabad." as NSString
        let attributedString = NSMutableAttributedString(string: string as String,attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttribute = [NSFontAttributeName:UIFont.boldSystemFontOfSize(17.0)]
        let boldForheading = [NSFontAttributeName:UIFont.boldSystemFontOfSize(19.0)]
        let colorformedi = [NSForegroundColorAttributeName:UIColor.blueColor()]
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("Somogel"))
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("Dactarain"))
        attributedString.addAttributes(boldForheading, range: string.rangeOfString("Use"))
        attributedString.addAttributes(colorformedi, range: string.rangeOfString("Somogel"))
        attributedString.addAttributes(colorformedi, range: string.rangeOfString("Dactarain"))
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("PrescribedBy:Dr Hasham,Allied Hospital Faisalabad."))
        return attributedString
    }


    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if let identifier = segue.identifier {
            switch identifier  {
                
            case History.segueIdentifier:
                if let tvc = segue.destinationViewController as? headache_textview {
                    tvc.text = attributedText()
                    
                }
            case History.segueIdentifier2:
                if let tvc = segue.destinationViewController as? headache_textview {
                    tvc.text = attributedText2()
                    
                }
            case History.segueIdentifier3:
                if let tvc = segue.destinationViewController as? headache_textview {
                    tvc.text = attributedText3()
                    
                }
            case History.segueIdentifier4:
                if let tvc = segue.destinationViewController as? headache_textview {
                    tvc.text = attributedText4()
                    
                }
            case History.segueIdentifier5:
                if let tvc = segue.destinationViewController as? headache_textview {
                    tvc.text = attributedText5()
                    
                }
            case History.segueIdentifier6:
                if let tvc = segue.destinationViewController as? headache_textview {
                    tvc.text = attributedText6()
                    
                }
            case History.segueIdentifier7:
                if let tvc = segue.destinationViewController as? headache_textview {
                    tvc.text = attributedText7()
                    
                }
                
            default:break
            }
        }
    }
    
    
    @IBOutlet weak var add: UIBarButtonItem!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
      //  add.target = self.revealViewController()
        //add.action = Selector("revealToggle:")
        
       // self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
    }
    
    
    
}
