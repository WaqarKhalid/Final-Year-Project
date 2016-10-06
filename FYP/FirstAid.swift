//
//  FirstAid.swift
//  FYP
//
//  Created by Sana Qadir on 4/18/16.
//  Copyright © 2016 Waqar Khalid. All rights reserved.
//

import UIKit

class FirstAid: UITableViewController {
    
    
    
    struct objects
    {
        var sectionNAme : String!
        var sectionObjects : [String]!
    }
    var objectsArray = [objects]()
    
    var  ThirdArray  = [ThirdView]()
    
    //var identities = ["one"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let colour = "<font color = red>11abdonimal pain</font>"
        let encoding = colour.dataUsingEncoding(NSUTF8StringEncoding)!
        let options = [NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType]
        do {
            let string = try! NSAttributedString(data: encoding, options: options, documentAttributes: nil)
          // ThirdView.ThirdViewArray.attributedText = string
        }
        
        // Do any additional setup after loading the view, typically from a nib.
        
        objectsArray = [objects(sectionNAme: "A", sectionObjects: ["Abdominal Pain" , "Ankle Fracture", "Ankle Sprain", "Asthma","Alergic Reaction","Animal Bites"]),
            objects(sectionNAme: "B", sectionObjects: ["Back Pain", "Black Eye", "Bleeding_Cuts and Wound"]),
            objects(sectionNAme: "C", sectionObjects: ["Back Pain", "Black Eye", "Bleeding_Cuts and Wound"]),
            objects(sectionNAme: "S", sectionObjects: ["Stroke"]),
            objects(sectionNAme: "T", sectionObjects: ["Tooth Loss"])
        ]
        
     
       
        
        ThirdArray = [ThirdView(ThirdViewArray: ["\(colour)",
            "2022 11ankle" ,
         "In this article \r 1. Control Swelling \r  2. Manage Pain and Inflammation \r 3. See a Health Care Provider  \r  Go to the emergency room if: Pain, \r bruising, or swelling is severe, theankle looks deformed or seems dislocated, or the person can't put any weight on\r the ankle. \r 1. Control \r Swelling \rRemove ankle bracelets or toe rings right away. \r Do RICE therapy: ",
            
            "\(attributedText())",
            " \r\t\tAllergic Reaction\r\r If you have severe allergies, you should keep  two epinephrine injection kits with you at all times and  readily available. If you experience any sign  of anaphylaxis, do not hesitate to use the autoinjector  even if those symptoms do not appear to  be allergy related. Using the autoinjector as a precaution  will not harm you. Call 911 even if you administer the  injection. \r\r \r 1. Treat Symptoms \r . For mild allergy symptoms, such as hay fever or hives,  give an over-the-counter (OTC) antihistamine. \r . For stuffy nose, give an OTC decongestant. \r . For itchy, watery eyes, use OTC allergy eye drops. \r . For itchy allergic rash, apply cold compresses and an  OTC hydrocortisone cream. \r\r 2. Follow Up \r . Watch for worsening symptoms, including signs of anaphylaxis. " ,
            
            "\r\t\tAnimal Bites\r\rIf an animal bites you or your child, follow these guidelines:\r\r \t.\tFor minor wounds. If the bite barely breaks the skin and there's no danger of rabies, treat it as a minor wound. Wash the wound thoroughly with soap and water. Apply an antibiotic cream to prevent infection and cover the bite with a clean bandage.\r\r \t.\tFor deep wounds. If the animal bite creates a deep puncture of the skin or the skin is badly torn and bleeding, apply pressure with a clean, dry cloth to stop the bleeding and see your doctor.\r\r \t.\tFor infection. If you notice signs of infection, such as swelling, redness, increased pain or oozing, see your doctor immediately. \r\r\t.\tFor suspected rabies. If you suspect the bite was caused by an animal that might carry rabies — including any wild or domestic animal of unknown immunization status, particularly bats — see your doctor immediately.\r\r Doctors recommend getting a tetanus shot every 10 years. If your last one was more than five years ago and your wound is deep or dirty, your doctor may recommend a booster. Get the booster as soon as possible after the injury. \r\r Domestic pets cause most animal bites. Dogs are more likely to bite than cats. Cat bites, however, are more likely to cause infection because they are usually puncture wounds and can't be thoroughly cleaned. Bites from nonimmunized domestic animals and wild animals carry the risk of rabies. Rabies is more common in bats, raccoons, skunks and foxes than in cats and dogs. Rabbits, squirrels and other rodents rarely carry rabies.\r\rThe Centers for Disease Control and Prevention recommends that children or adults exposed to bats, or who are sleeping and discover bats present, seek medical advice, even if they don't think they've been bitten. This is because bat bite marks can be hard to see.\r\r\t Seek prompt attention if:.\tThe wound is a deep puncture or you're not sure how serious it is.\r\r\t.\tThe skin is badly torn and bleeding significantly — first apply pressure with a bandage or clean cloth to stop the bleeding.\r\r.\tYou notice increasing swelling, redness, pain or oozing, which are warning signs of infection.\r\r.\tYou have questions about your risk of rabies or about rabies prevention. If the bite was caused by a cat or a dog, try to confirm that its rabies vaccination is up to date. If the bite was caused by a wild animal, seek advice from your doctor about which animals are most likely to carry rabies.\r\rBats often carry rabies. And people have been infected without obvious signs of a bite. This is why the Centers for Disease Control and Prevention recommends that people in contact with bats — or even those who are sleeping and awaken to find a bat in the bedroom — seek medical advice about rabies shots, even if they don't think they've been bitten.\r\r.\tYou haven't had a tetanus shot in the past five years and the wound is deep or dirty. You may need a booster shot."]),
            
            ThirdView(ThirdViewArray: ["22abdonimal pain","22ankle","22sss"]),
            ThirdView(ThirdViewArray: ["33abdonimal pain","33ankle","33ert"]),
            
            //For S value
            
            ThirdView(ThirdViewArray: ["\r\r\t\t\t\tStroke\r\rA stroke occurs when there's bleeding into your brain or when normal blood flow to your brain is blocked. Within minutes of being deprived of essential nutrients, brain cells start dying  a process that may continue over the next several hours.\r\rSeek immediate medical assistance. A stroke is a true emergency. The sooner treatment is given, the more likely it is that damage can be minimized. Every moment counts.\rIn the event of a possible stroke, use FAST to help remember warning signs.\r\t.  Face. Does the face droop on one side while trying to smile?\r\t.  Arms. Is one arm lower when trying to raise both arms?\r\t.  Speech. Can a simple sentence be repeated? Is speech slurred or strange?\r\t.  Time. During a stroke every minute counts. If you observe any of these signs, call 1122 or your local emergency number immediately.\r\r Other signs and symptoms of a stroke include:\r\r\t.  Weakness or numbness on one \tside of the body, including either leg\r\r\t.  Dimness, blurring or loss of vision,\t particularly in one eye\r\r\t.  Severe headache — a bolt out of \tthe blue — with no apparent cause\r\r\t.  Unexplained dizziness, unsteadiness or a sudden fall, especially if accompanied by any of the other signs or symptoms\rRisk factors for stroke include having high blood pressure, having had a previous stroke, smoking, having diabetes and having heart disease. Your risk of stroke increases as you age."]),
           
            //for T value
            
            ThirdView(ThirdViewArray: ["\r\t\t\tTooth Loss\r\rIt's sometimes possible to successfully implant permanent teeth that have been knocked out, but only if you follow the steps below immediately — before you see a dentist.\r\r\t.  Handle your tooth by the top or crown only  do not touch the roots.\r\r\t.  Inspect the crown and root to determine if any portion of either appears to be missing or fractured.\r\r\t.  Don't rub the tooth or scrape it to remove debris. This damages the root surface, making the tooth less likely to survive.\r\r\t.  If your tooth has dirt or foreign material on it, gently rinse your tooth briefly — no more than 10 seconds — in a bowl of lukewarm tap water to remove the debris. Don't hold it under running water, because too much pure water could kill the cells on the root surface that help reattach the tooth.\r\r\t.  Try to put your tooth back in the socket. If it doesn't go all the way into place, bite down slowly and gently on gauze or a moistened paper towel to help keep it in place. Hold the tooth in place until you see your dentist.\r\r\t.  If you can't put your tooth back in the socket, immediately place it between your cheek and gum, or in some milk, your own saliva or a warm, mild saltwater solution — 1/4 teaspoon salt to 1 quart water. Or use an over-the-counter product that preserves a knocked-out tooth, such as those approved by the American Dental Association, if you have quick access to it.\r\r\t.  Get emergency dental care. If your dentist's office is not open, go to the emergency room.Baby teeth (primary teeth) are not implanted if they're knocked out.\rFor permanent teeth, if a sharp surface or shiny surface is apparent, there's a chance that part of the root is still in the socket, and reimplantation becomes less successful. If reimplantation does not occur within two hours after the tooth is knocked out, the likelihood of success becomes poor — so it's vital to get emergency dental care."])
        ]
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as UITableViewCell!
        
        cell.textLabel?.text = objectsArray[indexPath.section].sectionObjects[indexPath.row]
        
        return cell
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objectsArray[section].sectionObjects.count
    }
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        //how many section we have
        return objectsArray.count
    }
    
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return objectsArray[section].sectionNAme
    }
    
    
    
    func attributedText()->NSAttributedString{
        
        let string = "\r\r\rTake:\r\t\tOne tablet of Peracetamol\r \t\tor \r\t\tibruprofen\r \t\tor \r\t\tNeproxen\r \t\tor \r\t\tArinac.                                                          \r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\rPrescribed By:Dr Hasham,Allied Hospital Faisalabad"as NSString
        
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

    
    
    var SecondAnswerArray = [String]()
    // var i = 1+
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let  indexPath: NSIndexPath = self.tableView.indexPathForSelectedRow!
        let  DestViewController = segue.destinationViewController as! FirstAidTableTextView
        var ThirdAnswerArray : ThirdView
        ThirdAnswerArray = ThirdArray[indexPath.section]
        DestViewController.FirstString = ThirdAnswerArray.ThirdViewArray[indexPath.row]
    }
    
    
    
    
    
    
    
    
    
}

