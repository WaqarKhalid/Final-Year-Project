//
//  Headache tableview.swift
//  FYP
//
//  Created by Waqar Khalid on 3/31/16.
//  Copyright © 2016 Waqar Khalid. All rights reserved.
//

import UIKit

class Headache_tableview: UITableViewController {

    private struct History {
        
        static let segueIdentifier = "tension"
        static let segueIdentifier2 = "migraine"
        static let segueIdentifier3 = "thunderclap"
        static let segueIdentifier4 = "mediover"
        static let segueIdentifier5 = "trigeminal"
        
    }
    
    func attributedText()->NSAttributedString{
        
        let string = "Take:\r\t\tOne tablet of Peracetamol \r \t\tor \r \t\tPonston \r\t\tor \r\t\tDispirin.                                                          \r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\rPrescribed By:Dr Hasham,Allied Hospital Faisalabad"as NSString
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])

        let colorformedi = [ NSForegroundColorAttributeName: UIColor.blueColor()]
        
        let boldFontAttribute = [NSFontAttributeName: UIFont.boldSystemFontOfSize(17.0)]
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        // Part of string to be bold
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("Peracetamol"))
        attributedString.addAttributes(colorformedi, range: string.rangeOfString("Peracetamol"))
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("Ponston"))
        attributedString.addAttributes(colorformedi, range: string.rangeOfString("Ponston"))
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("Dispirin"))
        attributedString.addAttributes(colorformedi, range: string.rangeOfString("Dispirin"))
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("Prescribed By:Dr Hasham,Allied Hospital Faisalabad"))


        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Take:"))
        
        
        
        // 4
        
        return attributedString
        
    }
    func attributedText2()->NSAttributedString{
        
        let string = "Take:\r\t\tNaproxen 500mg for temporary pain killing  and take B-Blocker for 1 year regularly one tablet to prevent attack.\r\r\rComplications:If you have migraine attack very often but are less severe then you are using pain killers oftenly.This condition is called Transformed Migraine.Taking large amounts of pain relievers containing caffeine can lead to rebound headaches.In many cases, people suffering from transformed migraines have other health problems such as high blood pressure and depression which complicate treatment.\r\r\r\r\r\r\r\r\r\r\r\rPrescribed By:Dr Hasham,Allied Hospital Faisalabad"as NSString
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        
        let colorformedi = [ NSForegroundColorAttributeName: UIColor.blueColor()]
        
        let boldFontAttribute = [NSFontAttributeName: UIFont.boldSystemFontOfSize(17.0)]
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        // Part of string to be bold
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("Naproxen 500mg for temporary pain killing  and take B-Blocker for 1 year regularly one tablet to prevent attack.\r\r\rComplications:If you have migraine attack very often but are less severe then you are using pain killers oftenly.This condition is called Transformed Migraine.Taking large amounts of pain relievers containing caffeine can lead to rebound headaches.In many cases, people suffering from transformed migraines have other health problems such as high blood pressure and depression which complicate treatment.\r\r\r\r\r\r\r\r\r\r\r\rPrescribed By:Dr Hasham,Allied Hospital Faisalabad"))
        attributedString.addAttributes(colorformedi, range: string.rangeOfString("Naproxen 500mg"))
        attributedString.addAttributes(colorformedi, range: string.rangeOfString("B-Blocker"))

        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Take:"))
        
        
        
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
    func attributedText4()->NSAttributedString{
        
        let string = "Caution:\r \t\t Leave the medicine" as NSString
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let colorforheading = [ NSForegroundColorAttributeName: UIColor.redColor() ]
        
        
        let boldFontAttribute = [NSFontAttributeName: UIFont.boldSystemFontOfSize(15.0)]
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        // Part of string to be bold
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("Leave the medicine"))
        
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Caution:"))
        
        attributedString.addAttributes(colorforheading, range: string.rangeOfString("Caution:"))
        attributedString.addAttributes(colorforheading, range: string.rangeOfString("Leave the medicine"))
        
        
        // 4
        
        return attributedString
        
    }
 
    func attributedText5()->NSAttributedString{
        
        let string = "Take:\r\t\tCarbamazepine(1+1)\r\t\tor\r\t\tPregabollin(1+1).\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\rPrescribed By:Dr Hasham,Allied Hospital Faisalabad"as NSString
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        
        let colorformedi = [ NSForegroundColorAttributeName: UIColor.blueColor()]
        
        let boldFontAttribute = [NSFontAttributeName: UIFont.boldSystemFontOfSize(17.0)]
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        // Part of string to be bold
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("Carbamazepine(1+1)"))
        attributedString.addAttributes(colorformedi, range: string.rangeOfString("Carbamazepine(1+1)"))
        attributedString.addAttributes(colorformedi, range: string.rangeOfString("Pregabollin(1+1)"))
         attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("Pregabollin(1+1)"))
        attributedString.addAttributes(boldFontAttribute, range: string.rangeOfString("Prescribed By:Dr Hasham,Allied Hospital Faisalabad"))
      
        
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Take:"))
        
        
        
        // 4
        
        return attributedString
        
    }



    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if let identifier = segue.identifier {
            switch identifier  {
                
            case History.segueIdentifier:
                if let tvc = segue.destinationViewController as? headache_textview {
                    
                    tvc.text = attributedText()
                    
                }
                
            case History.segueIdentifier2 :
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
                
            default:break
            }
        }
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    
    
    
    
}
