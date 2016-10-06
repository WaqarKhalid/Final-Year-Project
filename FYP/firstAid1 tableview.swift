//
//  Headache tableview.swift
//  FYP
//
//  Created by Waqar Khalid on 3/31/16.
//  Copyright © 2016 Waqar Khalid. All rights reserved.
//

import UIKit

class firstAid1_tableview: UITableViewController {
    override func  preferredStatusBarStyle()-> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    @IBOutlet weak var open: UIBarButtonItem!
    
    
    
    
    private struct History {
        
        static let segueIdentifier = "ankle fracture"
        
        static let segueIdentifier2 = "abdonimal pain"
        
        // A
        static let segueIdentifier3 = "ankle sprain"
        static let segueIdentifier4 = "asthma"
        static let segueIdentifier5 = "alergic reaction"
        static let segueIdentifier6 = "animal Bites"
        static let segueIdentifier7 = "abdonimal pain in childern"
        static let segueIdentifier8 = "anthrax"
        static let segueIdentifier9 = "alcohol intoxication"
        static let segueIdentifier10 = "Asthma in childern"
        static let segueIdentifier11 = "asthma in pregnancy"
        static let segueIdentifier12 = "aasthma exercice induced"
        static let segueIdentifier13 = "anthrax"
        
        // B
        static let B1 = "Black eye"
        static let B2 = "Bleeding"
        static let B3 = "Bleeding under nails"
        static let B4 = "broken elbow"
        static let B5 = "breething problems"
        static let B6 = "broken finger"
        static let B7 = "broken leg"
        static let B8 = "broken toe"
        static let B9 = "broken hand"
        static let B10 = "broken nose"
        static let B11 = "burns"
        
        // C
        
        static let C1 = "chemical burns"
        static let C2 = "chemical eye burns"
        static let C3 = "cough"
        static let C4 = "CPR for adults"
        static let C5 = "CPR for childern"
        
        // D
        static let D1 = "diarrhea"
        static let D2 = "dizziness"
        static let D3 = "drug alergy"
        static let D4 = "drowing"
        static let D5 = "drug overDose"
        
        // E
        
        static let E1 = "ear infection"
        static let E2 = "electric shok"
        static let E3 = "elbow dislocation"
        static let E4 = "eye injuries"
        static let E5 = "eyelid inflamation"
        
        // F
        
        static let F1 = "fainting"
        static let F2 = "food poisoning"
        static let F3 = "finger injuries"
        static let F4 = "fracture or dilocation"
        
        //G
        
        static let G1 =  "Gas Pain(Childern)"
        static let G2 =  "Gastroenteritis Treatment"
        
        // H
        
        static let H11 = "head injury"
        static let H1 = "headeche"
        static let H2 = "heart attack"
        static let H3 = "heat stroke"
        static let H4 = "human bites"
        
        // I
        
        static let I1 = "insect sting"
        static let I2 = "insect bites"
        
        //K
        static let K1 = "knee dislocation"
        static let K2 = "knee injury"
        
        //L
        static let L1 = "labor signs"
        
        //M
        static let M1 = "migraine"
        static let M2 = "muscle strain"
        
        //N
        static let N1 = "nail injury"
        static let N2 = "neck strain"
        //static let N3 = ""
        
        //P
        static let P1 = "poisoning"
        static let P2 = "panic attack"
        
        
        // R
        static let R1 = "rabies"
        static let R2 = "rashes"
        
        // S
        static let S1 = "seizure"
        static let S2 = "smoke inhale"
        static let S3 = "snakebite"
        static let S4 = "stomach"
        static let S5 = "swallowed object"
        
        //T
        static let T1 = "teething pain"
        static let T2 = "toxic shok"
        
        //V
        static let V1 = "vaginal bleeding"
        static let V2 = "vomiting"
        static let V3 = "vomiting pregnancy"
        
        
        // W
        static let W1 = "Whiplash"
        static let W2 = "Wrist Injury"
    }
    
    
    func attributedText()->NSAttributedString{
        
        let string = "Ankle Fracture Treatment\n\n 1. Leave Protruding Bone Alone\n\n.  If a bone has broken through the skin, don't push it back into place. Cover the area with a clean bandage and seek immediate medical attention.\n\n2. Stop Bleeding\n\n.  Apply steady, direct pressure with a cloth for 15 minutes and elevate the wound. If blood soaks through, apply another cloth over the first and seek immediate medical attention.\n\n3. Control Swelling\n\n.  Remove ankle bracelets or toe rings.\nIf medical attention is not immediately available, apply RICE therapy:\n.  Rest ankle by having the person stay off of it. Use crutches if necessary.\n.  Ice area. Use an ice pack or wrap the ice in a clean cloth. Do not place ice directly against the skin.\n.  Compress by wrapping ankle lightly (not tightly) with an ace bandage or elastic ankle brace. Do not try to align the bones.\n.  Elevate ankle above heart level.\n\n4. Manage Pain and Inflammation\n\n.  Give an over-the-counter pain medication such as ibuprofen or aspirin. Avoid ibuprofen and other NSAIDs if the person has heart failure or kidney failure. Do NOT give aspirin to anyone ages 18 or younger.\n\n5. See a Doctor as Soon as Possible\n\n6. Follow Up\n.  The doctor will examine and X-ray the ankle, leg, and foot. The doctor also may do a CT or CAT scan, or an MRI to determine if surgery is needed.\n.  If needed, the doctor will set the broken bone back in place and immobilize the ankle with a splint, cast, or other device. Surgery may be necessary to repair the break. "as NSString
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        
        let colorformedi = [ NSForegroundColorAttributeName: UIColor.blueColor()]
        
        let boldFontAttribute = [NSFontAttributeName: UIFont.boldSystemFontOfSize(17.0)]
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        // Part of string to be bold
        
        
        
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Ankle Fracture Treatment"))
        
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Leave Protruding Bone Alone"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Stop Bleeding"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Control Swelling"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("4. Manage Pain and Inflammation"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("5. See a Doctor as Soon as Possible"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("6. Follow Up"))
        
        
        
        
        // 4
        
        return attributedString
        
    }
    
    func attributedText2()->NSAttributedString{
        
        let string = "Treatment for Abdominal Pain in Adults\n\nSeek Immediate Medical Care If:\n.You have pain and tenderness to the touch in the lower right abdomen with fever and/or vomiting. These may be signs of appendicitis\n.You are pregnant and have abdominal pain or vaginal bleeding. This may be a sign of an ectopic pregnancy or miscarriage.\n\n1. Treat Symptoms\n. For heartburn from gastroesophageal reflux disease (GERD), take an over-the-counter antacid or acid reducer.\n .For constipation, take a mild stool softener or laxative.\n.For pain, take acetaminophen (Aspirin Free Anacin, Liquiprin, Panadol, Tylenol). Avoid NSAIDs such as aspirin, ibuprofen (Advil, Midol, Motrin), or naproxen (Naprosyn, Aleve, Anaprox, Naprelan), because they can cause stomach irritation or bleeding.\n\n2. When to Call a Doctor\nSeek medical help if the person:\n\n.Has severe abdominal pain or pain that lasts several days\n. Has nausea, fever, or inability to keep food down for several days\n. Has bloody stools\n.Has painful urination\n. Has blood in the urine\n .Cannot pass stools, especially if also vomiting\n. Has difficulty breathing\n.Had an injury to the abdomen in the days before the pain started\n.Has heartburn that isn't relieved by over-the-counter drugs or last longer than two weeks\n\n3. When to Call 1122\nCall 1122 if the person:\n\n.Vomits blood\n.Has severe difficulty breathing"as NSString
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttribute = [NSFontAttributeName: UIFont.boldSystemFontOfSize(15.0)]
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Treatment for Abdominal Pain in Adults"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Seek Immediate Medical Care If:"))
        
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Treat Symptoms"))
        
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. When to Call a Doctor"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. When to Call 1122"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("."))
        
        return attributedString
        
    }
    func attributedText3()->NSAttributedString{
        
        let string = "Ankle Sprain Treatment\n\n1. Control Swelling\n\n\n.Remove ankle bracelets or toe rings right away\n.Rest the ankle. Use crutches if necessary.\n.Ice the ankle for 20 to 30 minutes several times a day for the first 2 days.\n.Compress by wrapping the ankle lightly -- not tightly -- with an Ace bandage or elastic ankle brace.\n.Elevate the ankle above heart level for the first 48 hours.\n\n2. Manage Pain and Inflammation\n\n.Take ibuprofen (Advil, Motrin), acetaminophen (Tylenol), or aspirin for pain. But check with your doctor first if you have any medical conditions or take any other medicines.\n\n3. See a Health Care Provider\n\n.Make an appointment as soon as possible for any ankle sprain, mild or severe. Do not give aspirin to anyone younger than age 19 unless told to do so by a doctor."as NSString
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        
        let colorformedi = [ NSForegroundColorAttributeName: UIColor.blueColor()]
        
        let boldFontAttribute = [NSFontAttributeName: UIFont.boldSystemFontOfSize(15.0)]
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        // Part of string to be bold
        
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Ankle Sprain Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Control Swelling"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Manage Pain and Inflammation"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. See a Health Care Provider"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("."))
        
        
        
        return attributedString
        
    }
    func attributedText4()->NSAttributedString{
        
        let string = "Asthma Attack Treatment for Adults\n\n1. Follow the Person’s Asthma Plan, if Possible\n\n.Find out if the person has an individualized asthma action plan from a health care provider.\n.If so, follow its directions for giving asthma medication and seeking medical help for acute asthma attack.\n\n2. Give Asthma First Aid\n\nIf the person doesn't have an asthma plan:\n.Sit the person upright comfortably and loosen tight clothing.\n.If the person has asthma medication, such as an inhaler, assist in using it.\n.If the person doesn’t have an inhaler, use one from a first aid kit or borrow someone else’s.\n\n3. Use Inhaler With a Spacer, if Possible\n\n.Remove cap and shake inhaler well.\n.Insert inhaler into spacer.\n.Have the person breathe out completely and put mouth tightly around spacer mouthpiece.\n.Press inhaler once to deliver a puff.\n.Have the person breathe in slowly through the mouth and then hold breath for 10 seconds.\n.Give a total of four puffs, waiting about a minute between each puff.\n\n4. Use Inhaler Without a Spacer, if Necessary\n\n. Remove the inhaler cap and shake well.\n. Have the person breathe out all the way and seal lips tightly around inhaler mouthpiece.\n.As the person starts to breathe in slowly, press down on inhaler one time.\n.The person should keep breathing in as slowly and deeply as possible (about five to seven seconds) and then hold breath for 10 seconds.\n. Give a total of four puffs, waiting about one minute between each puff.\n\n5. Continue Using Inhaler if Breathing Is Still a Problem\n\n.After four puffs, wait four minutes. If the person still has trouble breathing, give another set of four puffs.\n.If there’s still little or no improvement, give four puffs every four minutes until ambulance arrives. If the person is having a severe attack, give up to six to eight puffs every five minutes.\n\n 6. Monitor the Person Until Help Arrives\n\n. Do not mistake drowsiness as a sign of improvement; it could mean asthma is worsening\n. Do not assume the person’s asthma is improving if you no longer hear wheezing.\n\n7. Follow Up\n\n.An emergency room doctor will check the severity of the attack and provide treatment, including medications.\n.The person may be discharged home or hospitalized for further care, depending on response to treatment."as NSString
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        // Part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Asthma Attack Treatment for Adults"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Follow the Person’s Asthma Plan, if Possible"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Give Asthma First Aid"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Use Inhaler With a Spacer, if Possible"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("4. Use Inhaler Without a Spacer, if Necessary"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("5. Continue Using Inhaler if Breathing Is Still a Problem"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("6. Monitor the Person Until Help Arrives"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("7. Follow Up"))
        
        
        
        
        
        return attributedString
        
    }
    func attributedText5()->NSAttributedString{
        
        let string = "Allergic Reaction Treatment\n\n Call 1122 now if the person has had severe reactions in the past or has any of these symptoms:\n\n.Difficulty breathing or wheezing\n.Tightness in the throat or a feeling that the airways are closing\n.Hoarseness or trouble speaking\n.Swollen lips, tongue, or throat\n.Nausea, abdominal pain, or vomiting\n.Fast heartbeat or pulse\n.Anxiety or dizziness\n.Loss of consciousness\n.Other symptoms of a severe allergic reaction (anaphylaxis)\n\nIf you have severe allergies, you should keep two epinephrine injection kits with you at all times and readily available. If you experience any sign of anaphylaxis, do not hesitate to use the autoinjector even if those symptoms do not appear to be allergy related. Using the autoinjector as a precaution will not harm you. Call 911 even if you administer the injection.\n\n1. Treat Symptoms\n\n.For mild allergy symptoms, such as hay fever or hives, give an over-the-counter (OTC) antihistamine.\n.For stuffy nose, give an OTC decongestant.\n.For itchy, watery eyes, use OTC allergy eye drops.\n.For itchy allergic rash, apply cold compresses and an OTC hydrocortisone cream.\n\n2. Follow Up\n\n.Watch for worsening symptoms, including signs of anaphylaxis."as NSString
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        // Part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Allergic Reaction Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Treat Symptoms"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Follow Up"))
        
        
        
        
        
        // 4
        
        return attributedString
        
    }
    func attributedText6()->NSAttributedString {
        let string = "Animal Bites Treatment\n\n1. Stop Bleeding\n\n.Apply direct pressure until bleeding stops.\n\n2. Clean and Protect\nFor a wound or superficial scratch from an animal bite:\n\n. Gently clean with soap and warm water. Rinse for several minutes after cleaning.\n.Apply antibiotic cream to reduce risk of infection, and cover with a sterile bandage.\n\n3. Get Help\n\n. Get medical help immediately for any animal bite that is more than a superficial scratch or if the animal was a wild animal or stray, regardless of the severity of the \\n.injury.\n.If the animal's owner is available, find out if the animal's rabies shots are up-to-date. Give this information to your health care provider.\n.If the animal was a stray or wild animal, call the local health department or animal control immediately.\n\n4. Follow Up\n\n.The health care provider will make sure the wound is thoroughly clean and may prescribe antibiotics.\n.The health care provider may numb the wound and look for any deeper damage.\n.If there is any risk of rabies infection, the health care provider will recommend anti-rabies treatment.\n.The person may require stitches, depending on how big the wound is and where it is located.\n.The person may also require a tetanus shot or booster.\n.The health care provider may recommend ibuprofen or acetaminophen for pain." as NSString
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        
        
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Animal Bites Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Stop Bleeding"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Clean and Protect"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Get Help"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("4. Follow Up"))
        
        
        return attributedString
    }
    func attributedText7()->NSAttributedString {
        let string = "Abdominal Pain in Children Treatment\n\nCall 1122 NOW if:\n\n.The child is not moving or is too weak to stand.\n\n1. Have Your Child Rest\n\n.Avoid activity, especially after eating.\n\n2.Treat Symptoms\n\n.Provide clear fluids to sip, such as water, broth, or fruit juice diluted with water.\n.Serve bland foods, such as saltine crackers, plain bread, dry toast, rice, gelatin, or applesauce.\n.Avoid spicy or greasy foods and caffeinated or carbonated drinks until 48 hours after all symptoms have gone away.\n.Encourage the child to have a bowel movement.\n.Ask your child’s doctor before giving any medicine for abdominal pain. Drugs can mask or worsen the pain.\n\n 3. When to Call a Doctor\n\n Call your child’s doctor immediately if your child has any of the following:\n. Persistent pain on the right side of the abdomen, which could be an appendicitis\n.Pain confined to one part of the abdomen\n.Severe or rapidly worsening abdominal pain or pain that doesn’t go away within 24 hours\n.Pain or tenderness when you press on the belly\n.A swollen abdomen or an abdomen that is rigid to the touch\n.Pain in the groin, or pain or swelling in a testicle\n.Unexplained fever\n.Lots of vomiting or diarrhea\n.Bleeding from the rectum\n.Blood in the stool or vomit\n.A recent abdominal injury" as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Abdominal Pain in Children Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Call 1122 NOW if:"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Have Your Child Rest"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2.Treat Symptoms"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. When to Call a Doctor"))
        
        return attributedString
    }
    
    
    func attributedText8()->NSAttributedString {
        let string = "Anthrax Treatment\n\nEarly symptoms depend on the type of exposure:\n\n.Cutaneous(skin)anthrax can show up immediately as an itchy bump that turns into a sore and then a painless ulcer with a black center.\n. Digestive anthrax symptoms include nausea, loss of appetite, bloody diarrhea, and stomach pain.\n.Inhaled anthrax symptoms are similar to flu and can include fever, muscle aches, headache, cough, and fatigue.\n\n1. See a Health Care Provider Immediately\n\n2. Follow Up\n\nOnce you see a health care provider, the next steps depend on the particular case.\n\n.If the person has been exposed to anthrax but doesn't have symptoms, a health care provider will give an anthrax vaccine and prescribe antibiotics.\n.If the person has developed symptoms, the health care provider will prescribe antibiotics.\n.If the anthrax case is serious, the person will be hospitalized. And, given antibiotics, anthrax antitoxins and other aggressive, supportive therapy.\n.If you have any reason to believe that anthrax exposure is linked to foul play, contact local law enforcement immediately." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Anthrax Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. See a Health Care Provider Immediately"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Follow Up"))
        
        return attributedString
    }
    
    func attributedText9()->NSAttributedString {
        let string = "Alcohol Intoxication Treatment\n\nCall 1122 if the person has these symptoms of alcohol poisoning:\n\n.Mental confusion or unconsciousness\n.Repeated vomiting\n.Seizures\n.Slow or irregular breathing\n.Low body temperature\n.Pale, clammy, or bluish skin\n\n1. Stop Further Drinking\n\n.Leave the place where the alcohol is, or put the alcohol away.\n.Coffee, cold showers, and other traditional remedies don't work.\n\n2. Keep the Person Safe\n\n.Never allow someone to drive when they are drunk.\n. Keep the person away from machinery, bicycles, skateboards, swimming pools, and other hazards.\n. Watch for signs of alcohol poisoning." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Alcohol Intoxication Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Stop Further Drinking"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Keep the Person Safe"))
        
        return attributedString
    }
    
    
    func attributedText10()->NSAttributedString {
        let string = "Acute Asthma Attack Treatment for Children\n\n Call 911 if the child is:\n\n. Having a hard time breathing\n.Constantly coughing\n.Unable to talk, eat, or play\n.Vomiting\n.Turning blue in the lips or fingers\n.Convulsing while breathing (using stomach muscles excessively to breathe)\n.If he does not have the above symptoms but is still complaining of trouble breathing or coughing, do the following:\n\n 1. Notify the Child’s Health Care Provider Immediately\n\n2. Follow the Child’s Asthma Plan, if Possible\n\n.\n.Find out if the child has an individualized asthma action plan from a health care provider.\n.If so, follow directions for giving asthma medication and seeking medical help for acute asthma attack.\n.Bring a copy of the child’s asthma action plan to show the ER staff.\n\n3. Give Quick-Relief Medicine\n\nIf the child has no asthma action plan but has an inhaler:\n\n.Sit child upright comfortably and loosen tight clothing.\n. Give one puff of quick-relief medicine from child's inhaler, always with a spacer.\n. Ask child to take four breaths from spacer.\n. Give three more puffs, with four breaths between each.\n. Wait four minutes. If there’s no improvement, give another four puffs.\n. If the child doesn’t have an inhaler, use one from a first aid kit. If you are sure this is an asthma attack and the child has used quick-relief asthma medicine before (albuterol), you can borrow someone else’s.\n\n4. Follow Up\n\n. An emergency room doctor will check the severity of the attack and provide treatment, including medication.\n.The child may be discharged home or hospitalized for further care, depending on response to treatment." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Acute Asthma Attack Treatment for Children"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Notify the Child’s Health Care Provider Immediately"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Follow the Child’s Asthma Plan, if Possible"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Give Quick-Relief Medicine"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("4. Follow Up"))
        
        return attributedString
    }
    
    func attributedText11()->NSAttributedString {
        let string = "Acute Asthma Attack in Pregnancy Treatment\n\n1. Symptoms of an acute asthma attack in pregnancy include:\n\n.Difficulty talking, walking, or thinking because of shortness of breath\n. Neck and ribs moving in during breathing\n.Blue  or gray looking skin\n. Peak flow reading below 60% of personal best\n.Decrease in fetal kick count if the baby is in distress\n\n2. Follow the Woman’s Asthma Plan, if Possible\n\n.Find out if the woman has an individualized treatment plan for asthma attack in pregnancy from a health care provider.\n.Follow the plan. It may say to call the woman's health care provider about when to give quick-relief medicine and whether additional medicines are needed.\n\n3. Give Asthma First Aid\n\n If the woman doesn't have an asthma action plan:\n.\n\n.Sit the woman upright comfortably and loosen tight clothing.\n.If woman has asthma medication, such as an inhaler, help her use it.If woman doesn't have an inhaler, use one from a first aid kit or borrow someone else’s.\n\n4. Use Inhaler With a Spacer, if Possible\n\n. Remove cap and shake inhaler well.\n. Insert inhaler into spacer.\n. Have her breathe out completely and put mouth tightly around spacer mouthpiece.\n. Press inhaler once to deliver a puff.\n. Have her breathe in slowly through the mouth and then hold breath for 10 seconds.\n. Give a total of four puffs, waiting about a minute between each puff.\n\n 5. Use Inhaler Without a Spacer, if Necessary\n\n.Remove cap and shake inhaler well.\n.Have woman breathe out all the way and seal lips tightly around inhaler mouthpiece.\n.As woman starts to breathe in slowly, press down on the inhaler one time.\n. Have her keep breathing in as slowly and deeply as possible (about five to seven seconds) and then hold breath for 10 seconds.Give a total of four puffs, waiting about one minute between each puff.\n\n 6. Continue Using Inhaler if Breathing Is Still a Problem\n\n.After four puffs, wait four minutes. If the woman still has trouble breathing, give another set of four puffs.\n.If there’s still little or no improvement, continue giving four puffs every four minutes until ambulance arrives.\n.If the woman is having a severe attack, give up to six to eight puffs every five minutes.\n\n 7. Monitor the Woman Until Help Arrives\n\n.Do not mistake drowsiness as a sign of improvement; it could mean asthma is worsening.\n.Do not assume her asthma is improving if you no longer hear wheezing.\n\n8. Follow Up\n\n.An emergency room doctor may give the woman oxygen, inhaled medications, and intravenous steroids. All can be given without risk to the baby.\n.The woman may be hospitalized so that she can be carefully monitored." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Acute Asthma Attack in Pregnancy Treatment"))
        
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Follow the Woman’s Asthma Plan, if Possible"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Symptoms of an acute asthma attack in pregnancy include:"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Give Asthma First Aid"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("4. Use Inhaler With a Spacer, if Possible"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("5. Use Inhaler Without a Spacer, if Necessary"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("6. Continue Using Inhaler if Breathing Is Still a Problem"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("7. Monitor the Woman Until Help Arrives"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("8. Follow Up"))
        
        return attributedString
    }
    
    func W1()->NSAttributedString {
        let string = " Whiplash Treatment\n\n1. Seek Medical Care\n\n.See a doctor. Or go to a hospital emergency room if:\n. Pain occurs after an injury or accident.\n.  Neck pain radiates down the arms and legs.\n.  Pain is accompanied by headaches, numbness, tingling, visual changes, nausea or weakness.\n\n2. Relieve Muscle Tension\n\n. Immediately after an injury, it's helpful to apply ice to the site of the pain. Later, some people find relief by applying dry or moist heat to the area.\n\n3. Treat Pain\n\n. Give pain medication, such as acetaminophen (Tylenol) or ibuprofen (Advil, Motrin).\n\n 4. Prevent Unnecessary Neck Strain\n\n.  When the person is lying down, place a small pillow under the nape of the neck to align head and neck.\n\n 5. Follow Up\n\n.  Treatment may include a cervical collar, muscle relaxants, exercises, or physical therapy." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Whiplash Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Seek Medical Care"))
        attributedString.addAttributes(boldFontAttributeforheading, range:  string.rangeOfString("2. Relieve Muscle Tension"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Treat Pain"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("4. Prevent Unnecessary Neck Strain"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("5. Follow Up"))
        
        return attributedString
    }
    
    func W2()->NSAttributedString {
        let string = "Wrist Injury Treatment\n\n1. Get Immediate Help, if Necessary\n\n.If there is obvious deformity, severe pain, numbness, or the person cannot move the wrist or maintain a grip, see a doctor Immediately or go to a hospital emergency department. These are signs of a possible fracture.\n.Support the hurt arm and wrist with a makeshift splint, such as a ruler, stick, rolled up newspaper, a pillow or sling, until you get help.\n\n 2. Rest Wrist\n \n. Minimize wrist motion to prevent further injury.\n\n3. Control Swelling\n \n.Ice the area for 20 minutes at a time, 4 to 8 times the first day.\n.You may apply a compression wrap such as an Ace bandage.\n.Elevate the wrist above heart level.\n\n4. Treat Symptoms\n \n.For pain and inflammation, give the person over-the-counter pain medication such as acetaminophen (Tylenol), ibuprofen (Advil, Motrin), or naproxen (Aleve, Naprosyn). Do not give aspirin to anyone under age 18 unless advised by your doctor for a specific condition.\n\n5. Follow-Up\n \n. If pain and swelling get worse in 24 hours, see a doctor.\n. The doctor may need to order X-rays to rule out a fracture that was not obvious and examine the wrist to look for signs of tendonitis, arthritis, gout, infection, or other conditions." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Wrist Injury Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Get Immediate Help, if Necessary"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Rest Wrist"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Control Swelling"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("4. Treat Symptoms"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("5. Follow-Up"))
        
        return attributedString
    }
    
    
    // B
    
    
    func B1()->NSAttributedString {
        let string = "Black Eye Treatment\n\n1. Treat Symptoms\n\n.Apply ice to the area. Don't press on the eye.\n.For pain, give acetaminophen (Tylenol). Don't give aspirin or ibuprofen (Advil, Motrin), because they can increase bleeding.\n\n2. Get Medical Help\n\nSee a health care provider to make sure there is no further damage to the eye.\nCall a health care provider immediately if:\n\n.The person's vision is blurred, double, or lost in either eye.\n.The person is in severe pain.\n.You suspect a serious eye injury.\n.There is drainage or bleeding on the white part of the eye or drainage from the eye.\n.The eyeball or pupil looks abnormal.\n.Skin around the eye is split or there is a cut on the eyelid.\n\n3. Follow Up\n\n.Continue icing the area several times a day for 1 or 2 days.\n.After 1 or 2 days, apply warm compresses to the bruised area instead.\n.Depending on the injury, the provider may prescribe eye drops and recommend follow up with an eye doctor." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Black Eye Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Treat Symptoms"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Get Medical Help"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Follow Up"))
        
        return attributedString
    }
    
    
    func B2()->NSAttributedString {
        let string = "Bleeding Cuts or Wounds\n\n1. Stop Bleeding\n\n.Apply direct pressure on the cut or wound with a clean cloth, tissue, or piece of gauze until bleeding stops.\n.If blood soaks through the material, don’t remove it. Put more cloth or gauze on top of it and continue to apply pressure.\n.If the wound is on the arm or leg, raise limb above the heart, if possible, to help slow bleeding.\n.Wash your hands again after giving first aid and before cleaning and dressing the wound.\n.Do not apply a tourniquet unless the bleeding is severe and not stopped with direct pressure.\n\n2. Clean Cut or Wound\n\n.Gently clean with soap and warm water. Try to rinse soap out of wound to prevent irritation.\n.Don’t use hydrogen peroxide or iodine, which can damage tissue.\n\n3. Protect the Wound\n\n.Apply antibiotic cream to reduce risk of infection and cover with a sterile bandage.\n.Change the bandage daily to keep the wound clean and dry.\n\n4. When to Call a Doctor\n\n.The wound is deep or the edges are jagged or gaping open.\n. The wound is on the person’s face.\n. The wound has dirt or debris that won’t come out.\n.The wound shows signs of infection, such as redness, tenderness, or a thick discharge, or if the person runs a fever.\n.The area around the wound feels numb.\n.Red streaks form around the wound.\n.The person has a puncture wound or deep cut and hasn’t had a tetanus shot in the past five years, or anyone who hasn’t had a tetanus shot in the past 10 years." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Bleeding Cuts or Wounds"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Stop Bleeding"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Clean Cut or Wound"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Protect the Wound"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("4. When to Call a Doctor"))
        
        return attributedString
    }
    
    
    func B3()->NSAttributedString {
        let string = "Bleeding Under Nail (Subungual Hematoma) Treatment\n\n1. When to See a Health Care Provider\n\n.Go to an emergency room or call a health care provider immediately if:\n. The finger or toe is deformed. It may be broken.\n. A nearby joint was also injured.\n. More than a quarter of the nail is discolored or there is continuing, intense pain.\n. Signs of infection develop, such as pus, redness, or heat around the nail, or a red streak extends from the wound.\n\n 2. Reduce Swelling and Pain\n\n. If less than a quarter of the nail is discolored and pain is manageable, home treatment may be enough.\n. For swelling, ice and elevate the area.\n.For pain, give over-the-counter pain medication.\n\n3. Follow Up\n\n.If you seek medical help, the doctor may make a small hole in the nail to drain blood and reduce pressure. In some cases, the nail may need to be removed to treat injury." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Bleeding Under Nail (Subungual Hematoma) Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. When to See a Health Care Provider"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Reduce Swelling and Pain"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Follow Up"))
        return attributedString
    }
    
    
    func B4()->NSAttributedString {
        let string = "Broken Elbow Treatment\n\n1. Reduce Swelling\n\n. Apply ice.\n.If bone is pushing through skin, do not touch it or try to put it back in place.\n\n2. Immobilize the Elbow\n\n For less serious injuries:\n.Cut away the sleeve if it cannot be removed without moving the injured elbow.\n.If you can without moving the elbow, tie splints on with fabric or elastic bandages above and below the elbow.\n.Cardboard, rolled-up newspaper, or other stiff material can be used as splints.\n.Put padding between the splints and the bony parts of the arm.\n.Make a sling and place the person's arm in it. Tie the sling around the person's neck.\n\n3. See a Health Care Provider Immediately\n\n 4. Follow Up\n\n.The health care provider will likely take X-rays and check for feeling and range of motion to determine whether there has been nerve or tendon damage.\n.The health care provider may apply a splint or cast.\n.Surgery may be needed for more complicated fractures." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Broken Elbow Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Reduce Swelling"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. See a Health Care Provider Immediately"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("4. Follow Up"))
        
        return attributedString
    }
    
    
    func B5()->NSAttributedString {
        let string = "Breathing Problems in Children\n\n1. Prevent Dehydration\n\n.Give babies plenty of breast milk or formula.\n.Give older children water or juice mixed with water.\n.Children may eat more slowly because of breathing problems, so give them plenty of time.\n\n2. Relieve Congestion\n\n.Thin mucus in a stuffy nose with saline nose drops.\n.Remove mucus from a baby's nose with a suction bulb.\n\n3. Ease Breathing\n\n.Use a cool-mist humidifier near the child to add moisture to the air.\n.Sit in the bathroom with a hot shower running and have your child breathe in the steam.\n\n4. Make the Child Comfortable\n\n.Let the child rest.\n.Give children's-formula acetaminophen (Tylenol) to bring down a fever.\n.Keep the child away from cigarette smoke." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Breathing Problems in Children"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Prevent Dehydration"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Relieve Congestion"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Ease Breathing"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("4. Make the Child Comfortable"))
        
        return attributedString
    }
    
    
    func B6()->NSAttributedString {
        let string = "Broken Finger Treatment\n\n1. Immobilize the Finger\n\n.Tape the broken finger to an adjacent non-broken finger.\n\n 2. Control Swelling\n\n.Cool the finger by applying ice that is wrapped in a towel -- don't apply ice directly to the skin; it can cause a burn.\n\n 3. Get Help\n\n. Call a health care provider or go to a hospital emergency room immediately so the broken finger can be X-rayed and properly set. Without treatment, it may not heal properly and could lead to a permanent deformity.\n\n  4. Treat Symptoms\n\n. Use an over-the-counter pain medicine such as acetaminophen (Tylenol) or ibuprofen (Advil, Motrin)." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Broken Finger Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Immobilize the Finger"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Control Swelling"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Get Help"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("4. Treat Symptoms"))
        
        return attributedString
    }
    
    
    func B7()->NSAttributedString {
        let string = "Broken Leg Treatment\n\n1. Reduce Swelling and Avoid Further Injury\n\n.Keep the injured leg as still as possible. Do not let the person bear any weight on the leg.\n. Apply ice.\n. Keep the leg raised with pillows or cushions.\n\n  2. Seek Medical Care Immediately\n\n. Take the person to see a health care provider. If you think a thighbone is broken or you are unable to move the person, call 911 and have the person taken to the hospital.\n\n3. Follow Up\n\nTreatment will depend on the nature of the injury.\n.A health care provider will examine the person's leg and likely do an X-ray.\n.The bone may be realigned and a splint, cast, or brace put on.\n.Surgery may be needed." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Broken Leg Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Reduce Swelling and Avoid Further Injury"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Seek Medical Care Immediately"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Follow Up"))
        
        return attributedString
    }
    
    
    func B8()->NSAttributedString {
        let string = "Broken Toe Treatment\n\n Symptoms of a broken toe include: pain, swelling, bruising, and difficulty walking.\n\n 1. Prevent Swelling and Further Injury\n\n.Stay off the foot as much as possible.\n. Avoid movement or pressure that causes pain.\n. Apply ice up to 20 minutes at a time. Wrap it in a towel; do not apply directly to skin.\n. Keep the foot elevated as often as possible, especially the first 2 days after injury, to help control pain and swelling.\n. For pain, take acetaminophen (Tylenol) or ibuprofen (Advil, Motrin).\n\n2. Get Help\n\n.If you have severe pain, can’t walk, the toe looks bent or deformed, or the pain lasts for a long time, see a doctor.\n\n 3. Follow Up\n\n. Stay off your foot and avoid activity that causes pain for 3-4 weeks.Wear a shoe with a stiff sole to protect the injured toe and keep it stable. Avoid shoes that put pressure on the toe." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Broken Toe Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Prevent Swelling and Further Injury"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Get Help"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Follow Up"))
        
        return attributedString
    }
    
    
    func B9()->NSAttributedString {
        let string = "Broken Hand Treatment\n\n1. Stop Bleeding if Necessary\n\n. Apply firm pressure with a clean cloth until bleeding stops.\n.If the bone is pushing through the skin, do not touch it or try to put it back in place.\n\n2. Control Swelling\n\n. Apply an ice pack (do not put ice directly against the skin).\n. If possible, remove any jewelry immediately.\n\n 3. Immobilize the Hand\n\n. If the person's hand is numb or cold or the skin under the fingernails is blue, do not move the hand or arm. Otherwise:\n. Have the person bend the arm at the elbow.\n.Do not try to straighten the hand if it bent or deformed.\n.Tie a splint on the lower arm with fabric or elastic bandages. Cardboard, rolled-up newspaper, or other stiff material can be used as a splint.\n.Make a sling and place the person's arm in it. Tie the sling around his or her neck.\n\n 4. See a Health Care Provider Immediately\n\n 5. Follow Up\n\n.The health care provider will likely take X-rays and check for feeling and range of motion in the hand to determine whether there has been nerve or tendon damage.\n. The health care provider may apply a splint or cast.\n. Surgery may be needed for more complicated fractures." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Broken Hand Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Stop Bleeding if Necessary"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Control Swelling"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Immobilize the Hand"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("4. See a Health Care Provider Immediately"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("5. Follow Up"))
        
        return attributedString
    }
    
    
    func B10()->NSAttributedString {
        let string = "Broken Nose Treatment\n\n1. When to See a Health Care Provider\n\n Go to a hospital emergency room or see a health care provider immediately if:\n\n.You cannot stop the nose from bleeding.\n. The nostril or nasal septum is crooked or out of place.\n.The person has clear drainage from one or both nostrils or a grapelike swelling inside the nose on the septum.\n\n 2. Treat Symptoms\n\n.Apply ice for pain and swelling.\n. Have the person rest and keep the head elevated even when sleeping.\n. The person should avoid blowing his or her nose.\n.Give acetaminophen for pain. Do not give NSAIDs such as ibuprofen or aspirin.\n\n3. Follow Up\n\n. If the nose is not out of position, rest and home treatment may be all that's needed.\n. If the nose is crooked or it is difficult for the person to breathe through the nose, see a health care provider.\n. If you see a health care provider, the next steps depend on the particular case:\n. To stop bleeding, the health care provider may pack the nostrils with gauze.For a simple fracture, the health care provider may straighten the nose.\n. Surgery may be needed to move bone or cartilage back in place for a more complicated fracture." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Broken Nose Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. When to See a Health Care Provider"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Treat Symptoms"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Follow Up"))
        
        return attributedString
    }
    
    
    func B11()->NSAttributedString {
        let string = "Thermal Burns Treatment\n\nFor All Burns\n\n1. Stop Burning Immediately\n\n. Put out fire or stop the person's contact with hot liquid, steam, or other material.\n. Help the person stop, drop, and roll to smother flames.\n. Remove smoldering material from the person.\n. Remove hot or burned clothing. If clothing sticks to skin, cut or tear around it.\n\n 2. Remove Constrictive Clothing Immediately\n\n.Take off jewelry, belts, and tight clothing. Burns can swell quickly.\n.Then take the following steps:\n\n For First-Degree Burns (Affecting Top Layer of Skin)\n\n 1. Cool Burn\n\n.Hold burned skin under cool (not cold) running water or immerse in cool water until pain subsides.\n. Use compresses if running water isn’t available.\n\n 2. Protect Burn\n\n.Cover with sterile, non-adhesive bandage or clean cloth.\n. Do not apply butter or ointments, which can cause infection.\n\n 3. Treat Pain\n\n.Give over-the-counter pain reliever such as ibuprofen (Advil, Motrin), acetaminophen (Tylenol), or naproxen (Aleve).\n\n 4. When to See a Doctor\n\n Seek medical help if:\n\n. You see signs of infection, like increased pain, redness, swelling, fever, or oozing.\n. The person needs tetanus or booster shot, depending on date of last injection. Tetanus booster should be given every 10 years.\n. Redness and pain last more than a few hours.\n. Pain worsens.\n\n 5. Follow Up\n\n. The doctor will examine the burn and may prescribe antibiotics and pain medication.\n\n For Second-Degree Burns (Affecting Top 2 Layers of Skin)\n\n1. Cool Burn\n\n.Immerse in cool water for 10 or 15 minutes.\n.Use compresses if running water isn’t available.\n.Don’t apply ice. It can lower body temperature and cause further damage.\n.Don’t break blisters or apply butter or ointments, which can cause infection.\n\n2. Protect Burn\n\nCover loosely with sterile, nonstick bandage and secure in place with gauze or tape.\n\n3. Prevent Shock\n\n.Unless the person has a head, neck, or leg injury, or it would cause discomfort:\n.Lay the person flat.\n.Elevate feet about 12 inches.\n.Elevate burn area above heart level, if possible.\n.Cover the person with coat or blanket.\n\n4. See a Doctor\n\n.The doctor can test burn severity, prescribe antibiotics and pain medications, and administer a tetanus shot, if needed." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Thermal Burns Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("For All Burns"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Stop Burning Immediately"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Remove Constrictive Clothing Immediately"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("For First-Degree Burns (Affecting Top Layer of Skin)"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Cool Burn"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Protect Burn"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Treat Pain"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("4. When to See a Doctor"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("5. Follow Up"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("For Second-Degree Burns (Affecting Top 2 Layers of Skin)"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Cool Burn"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Protect Burn"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString(" 3. Prevent Shock"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("4. See a Doctor"))
        
        return attributedString
    }
    
    
    func C1()->NSAttributedString {
        let string = "Chemical Burn Treatment\n\n1. Protect Yourself\n\n.Put on gloves or apron, if possible.\n.  Avoid exposing yourself to chemicals.\n\n 2. Rinse and Clear Burn Area\n\n. Flood area with cool water for at least 20 minutes or until help arrives.\n. Make sure water doesn't flow onto another part of the person's body or onto you.\n. Don't use a strong stream of water, if possible.\n.As you flush the burn (not before), remove jewelry or articles of clothing with chemical on them, unless they're stuck to the person's body.\n.After flushing the burn, follow instructions on the label of the chemical product, if available.\n.Don't try to neutralize the burn with acid or alkali. This could cause a chemical reaction that worsens the burn.\n.Don't put antibiotic ointment on the burn.\n.Among the few chemical toxins that should NOT be irrigated immediately with water are dry lime, phenols, and elemental metals (eg, sodium, potassium, calcium oxide, magnesium, phosphorous). Dry lime should be brushed off the skin prior to irrigation. It contains calcium oxide, which reacts with water to form calcium hydroxide, a strong alkali. Elemental metals and certain reactive metal compoundscombust or release hazardous byproducts when exposed to water. Examples include: sodium, potassium, magnesium, phosphorous, lithium, cesium, and titanium tetrachloride.\n. All fragments of such materials should be carefully removed with dry forceps and placed in a solution that is non water related (eg, mineral oil). Once this is done, the affected area should be covered with mineral oil (or a comparable solution) to prevent further exposure to air and moisture. Removal of phenol requires that it be wiped off the skin by sponges soaked in 50 percent polyethylene glycol (PEG).\n\n3. Cover a Small Burn Area\n\n.You can wrap a small burn with dry, sterile gauze or clean cloth." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Chemical Burn Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Protect Yourself"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Rinse and Clear Burn Area"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Cover a Small Burn Area"))
        return attributedString
    }
    func C2()->NSAttributedString {
        let string = "Chemical Eye Burn Treatment\n\n1. Flush the Eye\n\n. Have the person immediately rinse the eye or eyes under a faucet, in a gentle shower, or with a clean container of water. Position the person’s face so that the injured eye is down and to the side. Avoid spraying a high-pressure water stream into the eye or eyes.\n. Flush with lukewarm water for 15 to 30 minutes. For severe burns, continue flushing until you see a doctor or you arrive in an emergency room. The person should keep the eye open as wide as possible. Wash the person's hands thoroughly to make sure no chemical is still on them.\n.  Flush the eye to remove contact lenses. If they do not come out, try to gently remove them AFTER flushing.\n.  Do not rub the eye or place a bandage over the eye.\n.  While waiting for medical care, have the person wear sunglasses to decrease light sensitivity.\n\n 2. Get Help Immediately\n\nCall 1122 for severe burns, otherwise see a doctor or go to an emergency room as soon as possible. Be aware that alkali chemicals (such as ammonia and oven cleaner) might not be painful but they can cause the most serious injuries.\n.  Make sure you know what chemical got into the eye so the medical team can give the right treatment.\n\n 3. Follow Up\n\n.  The health care provider may continue flushing the eye with saline solution, checking periodically until pH is normal.\n. The health care provider may place anesthetic drugs in the eye to decrease discomfort with flushing." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Chemical Eye Burn Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Flush the Eye"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Get Help Immediately"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Follow Up"))
        
        return attributedString
    }
    func C3()->NSAttributedString {
        let string = "Coughs\n\n1. Prevent Dehydration\n\n.Give babies plenty of breast milk or formula.\n. Give older children water or juice mixed with water.\n\n    2. Relieve Congestion\n\n. Thin mucus in a stuffy nose with saline nose drops.\n. Remove mucus from a baby's nose with a suction bulb.\n. Use a humidifier in your child's room or take your child into the bathroom with a steamy shower running.\n\n 3. Ease Breathing\n\n. Use a cool-mist humidifier to add moisture to the air.\n. Sit in the bathroom with a hot shower running and have your child breathe in the steam.\n\n 4. Make the Child Comfortable\n\n. Let the child rest.\n. Avoid irritants, such as cigarette smoke.\n. Don't give cough medicine to a child under age 4 unless your pediatrician suggests it." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Coughs"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Prevent Dehydration"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Relieve Congestion"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Ease Breathing"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("4. Make the Child Comfortable"))
        return attributedString
    }
    
    func C4()->NSAttributedString {
        let string = "Hands-Only CPR for Adults\n\n 1. Check Responsiveness\n\n Tap the person's shoulder and shout, 'Are you OK?'  \nLook for normal breathing. Call 1122 if there is no response.\nStart Hands-Only CPR.\nHands-Only CPR should not be used for adults whose cardiac arrest is due to drug overdose, near-drowning, or an unwitnessed cardiac arrest. In these cases, do a conventional CPR combination of chest compressions and rescue breathing.\n\n 2. Do Chest Compressions\n\n. Place the heel of your hand on the center of the person's chest.\n.  Place the heel of your other hand on top of your first hand, lacing fingers together.\n.  Keep arms straight and your shoulders directly over your hands.\n.  Push hard and fast, compressing chest at least 2 inches.\n.  Let chest rise completely before pushing down again.\n.  Compress at least 100 times per minute.\n\n 3. Stop Only if:\nThe person starts breathing normally.\n\n.  A trained responder or emergency help takes over.\n.  You are too exhausted to continue.\n.  There is an automated external defibrillator (AED) to use.\n\n    4. Use an AED as Soon as One Is Available\n\n.  Turn on the AED. It will give you step-by-step instructions.\n.  Wipe chest dry.\n. Attach the pads.\n. Plug in connector, if needed.\n. Make sure no one is touching the person. Say Clear so that people know to stay back and not touch the person.\n.  Push the 'Analyze' button if necessary.\n.  If a shock is advised, push the 'Shock' button.\n.  Resume compressions and follow AED prompts." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Hands-Only CPR for Adults"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Check Responsiveness"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Do Chest Compressions"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Stop Only if:"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("4. Use an AED as Soon as One Is Available"))
        
        return attributedString
    }
    
    func C5()->NSAttributedString {
        let string = "CPR for Children\n\n1. Check to see if the child is conscious\n\n. Make sure you and the child are in safe surroundings.\n. Tap the child gently.\n. Shout, 'Are you OK?' \n. Look quickly to see if the child has any injuries, bleeding, or medical problems.\n\n 2. Check breathing\n\n. Place your ear near the child’s mouth and nose. Is there breath on your cheek? Is the child’s chest moving?\n\n 3. Begin chest compressions\n\n. If the child doesn’t respond and isn’t breathing:\n. Carefully place the child on his/her back. For a baby, be careful not to tilt the head back too far. If you suspect a neck or head injury, roll the baby over, moving his/her entire body at once.\n.For a baby, place two fingers on breastbone. For a child, place heel of one hand on center of chest at nipple line. You also can push with one hand on top of the other.\n.For a child, press down about 2 inches. Make sure not to press on ribs, as they are fragile and prone to fracture.\n.For a baby, press down about 1 1/2 inches, about 1/3 to 1/2 the depth of chest. Make sure not to press on the end of the breastbone.\n.Do 30 chest compressions, at the rate of 100 per minute. Let the chest rise completely between pushes.\n.Check to see if the child has started breathing.\n.Continue CPR until emergency help arrives." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("CPR for Children"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Check to see if the child is conscious"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Check breathing"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Begin chest compressions"))
        
        return attributedString
    }
    
    
    
    func D1()->NSAttributedString {
        let string = "Diarrhea Treatment\n\n1. Take Fluids\n\n.Ask your doctor what fluids are best for you or your child. Here are some basic tips:\n.Give an adult plenty of clear fluid, like fruit juices, soda, sports drinks and clear broth. Avoid milk or milk-based products, alcohol, apple juice, and caffeine while you have diarrhea and for 3 to 5 days after you get better. They may make diarrhea worse.\n. Give a child or infant frequent sips of a rehydration solution such as Pedialyte, CeraLyte, or Infalyte. Do not add salt tablets to a baby’s bottle.\n.Make sure the person drinks more fluids than they are losing through diarrhea. If they are unable to keep up with their losses, call a doctor.\n\n2. Rest\n. Have the person rest as needed and avoid strenuous exercise. Keep a sick child home from school or day care.\n\n3. Ease Into Eating\n. Feed an infant or child easily digested foods; the BRAT diet (bananas, rice, applesauce, and toast) is a good choice as soon as they can tolerate food.\n. For an adult, add semisolid and low-fiber foods gradually as diarrhea stops. Avoid spicy, greasy, or fatty foods.\n\n4. When to Call a Doctor\n\n.Call a doctor right away if:\n. You suspect that you or your child is dehydrated.\n. An infant 3 months old or younger has vomiting or diarrhea.\n. There is blood or mucus in the stool, or the stool is black.\n. You think the person needs over-the-counter diarrhea medication; some kinds of diarrhea can get worse with anti-diarrheal medications.\n. You think the person has traveler’s diarrhea or drank contaminated water.\n. The person is taking an antibiotic that may be causing the diarrhea.\n. There is stomach pain that is not relieved by having a bowel movement.\n. There is any fever.\n. The person is losing more fluid in his stool than he can replace by drinking fluids.\n\n5. Follow-Up\n\n Also seek medical attention if:\n\n. You or your child has any other medical problems and has diarrhea.\n. Diarrhea in an adult worsens or doesn’t clear up after 2 or 3 days\n. A child doesn’t feel better after 24 hours" as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Diarrhea Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Take Fluids"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Rest"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Ease Into Eating"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("4. When to Call a Doctor"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("5. Follow-Up"))
        
        return attributedString
    }
    func D2()->NSAttributedString {
        let string = "Dizziness Treatment\n\n1. Treat Symptoms\n\n The person should sit down or lie still.\n\n. If the person gets light-headed when standing up, the person should stand up slowly.\n.  Avoid sudden changes in position.\n.  If the person is thirsty, have him or her drink fluids.\n.  Avoid bright lights.\n\n 2. Call a Health Care Professional\n\n Call a health care professional if:\n\n. This is the first time the person has been dizzy.\n. The dizziness is different than before or doesn't go away quickly.\n\n3. Follow Up\n\n.  At the health care provider's office or hospital, the next steps depend on the particular case.\n.  The person may get oxygen or IV fluids to treat dehydration.\n.  If blood tests reveal abnormal blood chemistry (electrolyte levels), this will be corrected.\n.  Health care providers may start emergency treatment for heart attack or stroke, blood transfusion, or surgery." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Dizziness Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Treat Symptoms"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Call a Health Care Professional"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Follow Up"))
        
        return attributedString
    }
    func D3()->NSAttributedString {
        let string = "Drug Allergy Treatment\n\n1. When to See a Doctor\n\nSee a doctor immediately for these symptoms:\n\n. A fast-spreading painful red or blistered area on the skin\n. Top layer of skin peels off in sheets without blistering\n.  Scalded-looking raw areas of flesh\n.  Discomfort\n. Fever\n. Condition spreading to eyes, mouth, and genitals\n\n Call the doctor as soon as possible if the person has:\n\n.Swollen face, tongue, or lips, even without breathing difficulty or increase in swelling\n.Skin rash, itching, a feeling of warmth, or hives\n. See Severe Allergic Reaction Treatment.\n\n2. Stop Taking the Drug that Triggered the Reaction\n\n3. Control Itching\n\n For a mild reaction:\n\n Give an adult an over-the-counter antihistamine. Check with a doctor before giving an antihistamine to a child.\n\n. Use cool compresses on the area or have the person take cool showers.\n. Avoid strong soaps, detergents, and other chemicals.\n. Stay in a cool room. Have the person wear loose-fitting, lightweight clothes.\n. For a rash, apply calamine lotion.\n\n 4. Follow Up\n\n. Call or see a doctor if home treatment doesn't help or symptoms get worse.\n. Talk to the doctor about an alternative medicine and what drug(s) to avoid in the future.\n. Serious symptoms may require a hospital stay." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Drug Allergy Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. When to See a Doctor"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString(" 2. Stop Taking the Drug that Triggered the Reaction"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Control Itching"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("4. Follow Up"))
        
        return attributedString
    }
    func D4()->NSAttributedString {
        let string = "Drowning Treatment\n\n1. Get Help\n\n.Notify a lifeguard, if one is close. If not, ask someone to call 1122\n. If you are alone, follow the steps below.\n\n 2. Move the Person\n\n. Take the person out of the water.\n\n 3. Check for Breathing\n\n. Place your ear next to the person's mouth and nose. Do you feel air on your cheek?\n. Look to see if the person's chest is moving.\n\n 4. If the Person is Not Breathing, Check Pulse\n\n Check the person's pulse for 10 seconds.\n\n 5. If There is No Pulse, Start CPR\n\n. Carefully place person on back.\n. For an adult or child, place the heel of one hand on the center of the chest at the nipple line. You can also push with one hand on top of the other. For an infant, place two fingers on the breastbone.\n. For an adult or child, press down about 2 inches. Make sure not to press on ribs. For an infant, press down about 1 and 1/2 inches. Make sure not to press on the end of the breastbone.\n. Do 30 chest compressions, at the rate of 100 per minute or more. Let the chest rise completely between pushes.\n. Check to see if the person has started breathing.\n. Note that these instructions are not meant to replace CPR training. Classes are available through the American Red Cross, local hospitals, and other organizations.\n\n 6. Repeat if Person Is Still Not Breathing\n\n. If you've been trained in CPR, you can now open the airway by tilting the head back and lifting the chin.\n. Pinch the nose of the victim closed. Take a normal breath, cover the victim's mouth with yours to create an airtight seal, and then give 2 one-second breaths as you watch for the chest to rise.\n. Give 2 breaths followed by 30 chest compressions.\n. Continue this cycle of 30 compressions and 2 breaths until the person starts breathing or emergency help arrives." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Drowning Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Get Help"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Move the Person"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Check for Breathing"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("4. If the Person is Not Breathing, Check Pulse"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("5. If There is No Pulse, Start CPR"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("6. Repeat if Person Is Still Not Breathing"))
        
        
        return attributedString
    }
    func D5()->NSAttributedString {
        let string = "Drug Overdose Treatment\n\n1. Begin CPR, if Necessary\n\nIf the person is not breathing or breathing is dangerously weak:\n\nThe FDA has approved a prescription treatment that can be used by family members or caregivers to treat a person known or suspected to have had an opioid overdose. Opioids include various prescription pain medications and illicit street drugs. An overdose is characterized by slowed breathing and heart rate and a loss of consciousness. Evzio (naloxone hydrochloride injection) rapidly delivers a single dose of the drug naloxone via a hand-held auto-injector that can be carried in a pocket or stored in a medicine cabinet. Although Evzio can counter overdose effects within minutes, professional medical help is still needed.\n\n 2. Contact Poison Control\n\n Call health care\n\n. Poison Control experts will advise you how to proceed.\n. Do not try to make the person vomit or give the person anything to eat or drink.\n\n 3. Collect Drug or Pills\n\n. Give drug or pills the person may have taken to the emergency team, or take them to the emergency room or doctor's office.\n\n 4. Follow Up\n\n. At the hospital, the person's stomach may be pumped.\n. Activated charcoal may be given by mouth to absorb the drug.\n. A psychiatric evaluation will be ordered if the overdose was intentional." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Drug Overdose Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Begin CPR, if Necessary"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Contact Poison Control"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Collect Drug or Pills"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("4. Follow Up"))
        
        return attributedString
    }
    
    func E1()->NSAttributedString {
        let string = "Treating Ear Infections in Children\n\n1. Use Child-Formula Pain Relievers\n\n. Call a pediatrician before giving your child an infant- or child-strength over-the-counter pain reliever for the first time.\n. Give children's-formula acetaminophen (Tylenol) or ibuprofen (Advil, Motrin) if your child is older than 6 months. Follow the dosing instructions on the bottle or your pediatrician's suggestions.\n. Do not give aspirin to children under age 16.\n\n 2. Soothe the Ear\n\n. Put a warm washcloth or water bottle on the ear.\n\n 3. Consider Pain-Relieving Eardrops\n\n. Ask your pediatrician whether they might help your child.\n. Don't use eardrops without asking your pediatrician.\n\n 4. Observe Your Child\n\n. If symptoms seem to be getting worse, call a pediatrician. Your child may need further treatment." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Treating Ear Infections in Children"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Use Child-Formula Pain Relievers"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Soothe the Ear"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString(" 3. Consider Pain-Relieving Eardrops"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("4. Observe Your Child"))
        
        return attributedString
    }
    
    func E2()->NSAttributedString {
        let string = "Electric Shock Treatment\n\n1. Separate the Person From Current's Source\n\n. To turn off power:\n. Unplug an appliance if plug is undamaged or shut off power via circuit breaker, fuse box, or outside switch.\n. If you can't turn off power:\n. Stand on something dry and non-conductive, such as dry newspapers, telephone book, or wooden board.\n.Try to separate the person from current using non-conductive object such as wooden or plastic broom handle, chair, or rubber doormat.\n. If high voltage lines are involved:\n. The local power company must shut them off.\n. Do not try to separate the person from current if you feel a tingling sensation in your legs and lower body. Hop on one foot to a safe place where you can wait for lines to be disconnected.\n. If a power line falls on a car, instruct the passengers to stay inside unless explosion or fire threatens.\n\n 2. Do CPR, if Necessary\n\n. When you can safely touch the person, do CPR if the person is not breathing or does not have a pulse.\n.For a child, start CPR for children\n.For an adult, start adult CPR.\n\n3. Check for Other Injuries\n\n.If the person is bleeding, apply pressure and elevate the wound if it's in an arm or leg.\n.There may be a fracture if the shock caused the person to fall.\n.For burns, see Burn Treatment.\n\n4. Wait for 1122 to Arrive\n\n 5. Follow Up\n\n. A doctor will check the person for burns, fractures, dislocations, and other injuries.\n. An ECG, blood tests, urine test, CT scan, or MRI may be necessary.\n. The person may be admitted to the hospital or a burn center." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Electric Shock Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Separate the Person From "))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Do CPR, if Necessary"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Check for Other Injuries"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("4. Wait for 1122 to Arrive"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("5. Follow Up"))
        
        return attributedString
    }
    
    func E3()->NSAttributedString {
        let string = "Dislocated Elbow Treatment\n\n 1. Don't Move the Elbow\n\n. Moving the elbow or trying to put it back into place could cause more damage.\n\n   2. Treat Symptoms\n\n. Apply ice to reduce swelling while waiting for medical care.\n. Give acetaminophen (Tylenol) or ibuprofen (Advil, Motrin) for pain.\n\n 3. Follow Up\n\n. The health care provider will examine the arm, check for damage to arteries and nerves, and X-ray the area to check for a broken bone or dislocation.\n.  A simple dislocation can be realigned and stabilized in an emergency room using strong pain medication and possibly sedation medication.\n. Sometimes surgery is needed." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Dislocated Elbow Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Don't Move the Elbow"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Treat Symptoms"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Follow Up"))
        
        
        return attributedString
    }
    
    func E4()->NSAttributedString {
        let string = "Eye Injury Treatment\n\n1. For Chemical Exposure \n\n.Don't rub eyes.\n. Immediately wash out the eye with lots of water. Use whatever is closest -- water fountain, shower, garden hose.\n. Get medical help while you are doing this, or after 15 to 20 minutes of continuous flushing\n. Don't bandage the eye.\n\n 2. For a Blow to the Eye\n\n. Apply a cold compress, but don't put pressure on the eye.\n.  Take over-the-counter acetaminophen (Tylenol) or ibuprofen (Advil, Motrin) for pain.\n. If there is bruising, bleeding, change in vision, or it hurts when your eye moves, see a doctor right away.\n\n 3. For a Foreign Particle in Eye\n\n. Don't rub the eye.\n.Pull the upper lid down and blink repeatedly.\n. If particle is still there, rinse with eyewash.\n. If rinsing doesn't help, close eye, bandage it lightly, and see a doctor." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Eye Injury Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. For Chemical Exposure"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. For a Blow to the Eye"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. For a Foreign Particle in Eye"))
        
        return attributedString
    }
    
    func E5()->NSAttributedString {
        let string = "Eyelid Inflammation Treatment\n\n1. Cleanse Eyes\n\n.Wash hands.\n. With the person's eyes closed, clean the eyelids with diluted baby shampoo, using a clean cotton ball for each eye.Rinse with cool water and pat dry with a clean towel.\n. Repeat this process twice daily\n\n2. See a Health Care Provider if the Condition Doesn't Improve\n\n  3. Follow Up\n\n.  The person should avoid wearing contact lenses until the condition improves.\n. If the person seeks medical help, the health care provider will do an eye exam and may do some tests. Treatment will depend on the cause of inflammation. If infection is the cause, the health care provider will prescribe an antibiotic ointment." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Eyelid Inflammation Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Cleanse Eyes"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. See a Health Care Provider if the Condition Doesn't Improve"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Follow Up"))
        
        return attributedString
    }
    
    func F1()->NSAttributedString {
        let string = "Fainting Treatment\n\nCall the parson if:\n\n.Has blue lips or face\n. An irregular or slow heartbeat \n.  Chest pain\n.  Difficulty breathing\n.  Is difficult to awaken\n.  Acts confused\n\n 1. Make the Person Safe\n\n.  Lay the person flat on his or her back.\n.  Elevate the person's legs to restore blood flow to the brain.\n.  Loosen tight clothing.\n\n   2. Try to Revive the Person\n\n. Shake the person vigorously, tap briskly, or yell.\n.  If the person doesn't respond, call 1122 immediately and start CPR if necessary.\n.  If an AED is available, bring it by the person and use it if you have been trained on its use.\n\n 3. Do Home Care for Simple Fainting\n\n.  If the person is alert, give fruit juice, especially if the person has not eaten in more than 6 hours or has diabetes.\n.  Stay with the person until he or she is fully recovered.\n\n 4. Call a Health Care Provider\n\n.  See a health care provider right away if the person:\n.  Hit his or her head when fainting\n.  Faints more than once in a month\n.  Is pregnant or has a heart condition or other serious illness\n.  Experiences unusual symptoms, such as chest pain, shortness of breath, confusion, blurred vision, or difficulty talking" as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Fainting Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Call the parson if:"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Do Home Care for Simple Fainting"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Make the Person Safe"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Try to Revive the Person"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("4. Call a Health Care Provider"))
        
        return attributedString
    }
    
    func F2()->NSAttributedString {
        let string = "Food Poisoning Treatment\n\n 1.Control Nausea and Vomiting\n\n.Avoid solid foods until vomiting ends. Then eat light, bland foods, such as saltine crackers, bananas, rice, or bread.\n. Sipping liquids may help avoid vomiting.\n. Don’t eat fried, greasy, spicy, or sweet foods.\n. Don’t take anti-nausea or anti-diarrhea medication without asking your doctor. They may make some kinds of diarrhea worse. Your doctor may give you anti-nausea medication if you are at risk of being dehydrated.\n\n 2. Prevent Dehydration\n\n.Drink clear fluids, starting with small sips and gradually drinking more.\n. If vomiting and diarrhea last more than 24 hours, drink an oral rehydration solution.\n\n 3. When to Call a Doctor\n\n. Call a doctor immediately if symptoms last more than 3 days and include:\n. Severe belly pain\n. Fever\n. Bloody diarrhea or dark stools\n. Vomiting that is prolonged or bloody\n. Signs of dehydration, such as dry mouth, decreased urination, dizziness, fatigue, or increased heart rate or breathing rate" as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Food Poisoning Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1.Control Nausea and Vomiting"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Prevent Dehydration"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. When to Call a Doctor"))
        
        return attributedString
    }
    
    func F3()->NSAttributedString {
        let string = "Treatment for Finger Injuries\n\nTreating Finger Injuries at Home\n\n 1. Stop Bleeding\n\n. Apply firm pressure until bleeding stops.\n.  If finger or part of finger is severed, put the severed part in a clean plastic bag, pack the bag in ice, and take it with you to the doctor.\n\n 2. Clean Wound\n\n.  Wash with fresh water.\n.  Apply antibacterial cream to reduce risk of infection.\n.  Apply a sterile bandage.\n\n 3. Control Swelling\n\n.  Apply ice to a bruised or swollen finger.\n\n 4. When to See a Doctor\n\n.  Inability to move the finger\n.  Numbness\n.  Bone is exposed\n.  The wound is deep or long.\n.  Pain and swelling are severe or persistent.\n.  You can't clean the wound or the wound is very dirty. (You may need antibiotics)\n.  The injury is a puncture or open wound and you haven’t had a tetanus shot in the last 10 years.\n.   The injury is from a human or animal bite.\n.   If the wound doesn't heal or shows signs of infection: redness, swelling, pain, or pus." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Treatment for Finger Injuries"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Stop Bleeding"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Clean Wound"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Control Swelling"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("4. When to See a Doctor"))
        
        return attributedString
    }
    
    func F4()->NSAttributedString {
        let string = "Fractures or Dislocations Treatment\n\n1. Stop Bleeding, if Necessary\n\n. Apply firm pressure to wound with clean cloth until bleeding stops.\n. If bone is pushing through skin, do not touch it or try to put it back in place.\n\n 2. Splint the Area, if Possible\n\n.The purpose of the splint is to hold still and protect a wounded body part from further damage.\n. Cut away clothing if it cannot be removed without moving the injured body part.\n. Gently tape the dislocated area or fracture to a rolled-up newspaper, ruler, stick, or a rolled-up piece of clothing with first aid tape. In general, try to include the joint above and below the injury in the splint. As much as possible, avoid moving the injured limb, and never force it or try to twist it back into place.\n\n 3. Reduce Swelling and Prevent Injury\n\n. Apply an ice pack wrapped in cloth or a cold compress.\n. Elevate the injured area if possible.\n\n 4. Manage Pain and Inflammation\n\n. For pain, give ibuprofen (Advil, Motrin), acetaminophen (Tylenol), or naproxen (Aleve, Naprosyn). Do not give aspirin to anyone under age 18.\n\n5. Get Medical Help As Soon as Possible\n\n 6. Follow Up\n\n. The doctor will X-ray the dislocation or fracture and may realign and set it.\n. The doctor may apply a splint or cast, or surgery may be required." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Fractures or Dislocations Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Stop Bleeding, if Necessary"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Splint the Area, if Possible"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Reduce Swelling and Prevent Injury"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("4. Manage Pain and Inflammation"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("5. Get Medical Help As Soon as Possible"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("6. Follow Up"))
        
        return attributedString
    }
    
    
    
    
    
    func G1()->NSAttributedString {
        let string = "Gas Pain (Children)\n\n1. Adjust Feedings\n\n.Don't overfeed your child.\n.Hold her upright.\n.Burp your child often.\n\n 2. Move Your Child\n\n.Rock your child gently.\n.Move your child's legs as if he was pedaling a bicycle.\n\n3. Massage Your Child\n\n.Rub your child's stomach lightly.\n.Lay her across your lap and pat her back.\n\n4. Apply Heat\n\n.Place a warm towel or water bottle on your child's tummy.\n\n 5. Review Feeding\n \n.If formula-feeding, talk with your pediatrician about switching to a soy-based formula or, if your child is older than 1 year, soy or almond milk. If an older child has gas pain after having milk products, talk to your doctor about lactose intolerance, especially if there is a family history of it.\n. If you're breastfeeding, you don't need to be concerned about your own diet causing gas pains in your baby. There's no evidence that a mom's diet has an effect on gas in babies." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Gas Pain (Children)"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Adjust Feedings"))
        attributedString.addAttributes(boldFontAttributeforheading, range:   string.rangeOfString("2. Move Your Child"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("4. Apply Heat"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Massage Your Child"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("5. Review Feeding"))
        
        return attributedString
    }
    func G2()->NSAttributedString {
        let string = "\r\rUse:\r\tSomogel of Dactarain gel in mouth at infected areas.\rApply after every 4 hours.\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\rPrescribedBy:Dr Hasham,Allied Hospital Faisalabad." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. When to Call a Doctor"))
        
        return attributedString
    }
    
    func H11()->NSAttributedString {
        let string = "Hand Injury Treatment\n\n1. For Cuts\n\n. Apply direct pressure until bleeding stops.\n. Remove rings and bracelets that may impede blood flow or compress nerves if swelling occurs later.\n. Clean area with warm water and soap.\n. Apply antibiotic ointment and a sterile bandage.\n. Apply ice and elevate hand to reduce swelling.\n. If a finger or part of a finger has been cut off, collect all parts and tissue and place in a plastic bag on ice for transport to the hospital with the person.\n.See a health care provider immediately for a deep cut, puncture wound, animal bite, human bite, or a scrape that you cannot get clean or if the cut shows signs of infection.\n\n2. For Sprains, Finger Dislocations or Fractures\n\n.Apply ice to reduce swelling.\n. Keep finger elevated above the heart\n. If finger is bent or deformed, don't try to straighten it.\n. See a doctor immediately.\n\n 3. For Infection\n\n.See your health care provider if a hand injury shows signs of infection, including redness, swelling, warmth, or discharge.\n\n4. Other Times to Get Medical Help\n\n.See a health care provider immediately for any hand injury if:\n.The person cannot move the hand or fingers\n.There are persistent new symptoms\n\n5. Follow Up\n\n.If the person sees a health care provider, the next steps depend on the nature and severity of the hand injury.\n.For bites, puncture wounds, burns, and some other hand injuries, the health care provider will give a tetanus shot or booster if the person hasn't had one recently. The health care provider will also clean the wound and remove embedded dirt and debris.\n.For a fracture or dislocation, a doctor will X-ray the hand and may apply a splint or cast.\n.To prevent or treat an infection, the health care provider may prescribe antibiotics.\n.Surgery may be required for some hand injuries.\n.Physical therapy or occupational therapy may be prescribed to assist the person in regaining full function." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Hand Injury Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. For Cuts"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. For Sprains, Finger Dislocations or Fractures"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. For Infection"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("4. Other Times to Get Medical Help"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("5. Follow Up"))
        
        return attributedString
    }
    
    
    func H1()->NSAttributedString {
        let string = "Mild Headache Treatment\n\n1. Take Pain MedicationGive ibuprofen (Advil, Motrin), aspirin, or acetaminophen (Tylenol) for pain. Avoid ibuprofen and other NSAIDs if the person has heart failure or kidney failure. Do not give aspirin to a child under age 18.\n\n2. Try Self-Care Strategies\n\nThe person should drink plenty of liquids. Dehydration can cause or worsen a headache.\nApply a cool cloth or ice pack to the forehead, temples, or back of the neck.\nrelated content\n SLIDESHOW\n Surprising Reasons You're in Pain Start\nMassage the person's neck and back to relieve muscle tension.\nApply gentle, rotating pressure to the painful area of the head.\nHave the person rest or take a warm bath or shower.\n\n3. When to Call a Health Care Provider\n Seek medical care immediately for:\n\nA headache that occurs after a head injury\nA headache that is accompanied by dizziness, speech impairment, confusion, or other neurological symptoms\nA severe headache that comes on suddenly\n A headache that gets worse even after taking pain medications" as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Mild Headache Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Take Pain Medication"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Try Self-Care Strategies"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. When to Call a Health Care Provider"))
        
        return attributedString
    }
    func H2()->NSAttributedString {
        let string = "Heart Attack Treatment\n\n 1. Know Heart Attack Symptoms\n\n Chest discomfort that may last more than a few minutes or go away and come back; it may feel like squeezing, fullness, pressure, or pain.\n Pain or discomfort in the upper body, including arm, left shoulder, back, neck, jaw, or below the breastbone\n Difficulty breathing or shortness of breath (with or without chest pain)\n Sweating or 'cold sweat'\n Indigestion, heartburn, nausea, or vomiting\n  Light-headedness, dizziness, or extreme weakness\n  Anxiety or rapid or irregular heartbeats\n\n 2. Wait for Emergency Help to Arrive\n  Do not drive to the hospital unless you have no other option. Ambulance personnel can start care as soon as they arrive.\n If there is no history of aspirin allergy or bleeding, emergency response may ask the person to chew one 325 mg aspirin slowly.\n\n 3. Follow Up\n\n  At the hospital, an emergency department doctor will examine the \\\\\\nperson and run tests to see if chest pain stems from a heart attack or \nanother cause. Tests may include an electrocardiogram (ECG), chest X-nray, and blood tests.\n Inform the person's doctor about the chest pain and ER visit." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Heart Attack Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Know Heart Attack Symptoms"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Wait for Emergency Help to Arrive"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Follow Up"))
        
        return attributedString
    }
    
    func H3()->NSAttributedString {
        let string = "Heat Stroke Treatment\n\n1. Call 1122\n\n Heat stroke is a medical emergency. Seek immediate emergency care if you think someone might have heat stroke.\n\n 2. Lower Body Temperature While Waiting for Emergency Services to Arrive.\n\n Get the person into air conditioning if possible or out of the sun and into the shade.\nSpray the person with cool water, or apply cold wet cloths or ice packs to the armpits, neck, and groin. Fan air across the person to increase cooling. These methods help cool the person more quickly.\n Do not give the person anything to drink if the person is not alert or is vomiting.\n\n  3. Treat Symptoms\n\nIf the person experiences seizures, keep him or her safe from injury.\nIf the person vomits, turn the person on his or her side to keep the airway open.\n\n 4. Follow Up\n\n At the hospital, health care providers will rehydrate the person and continue cooling as needed." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Heat Stroke Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Call 1122"))
        
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Lower Body Temperature While Waiting for Emergency Services to Arrive."))
        
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Treat Symptoms"))
        
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("4. Follow Up"))
        
        
        return attributedString
    }
    
    func H4()->NSAttributedString {
        let string = "Human Bites Treatment\n\n1. Stop Bleeding\n\n.Apply firm, direct pressure with sterile gauze or clean cloth until bleeding stops.\n\n 2. Clean and Protect\n\n. Clean the wound with mild soap and water. Rinse for several minutes under running water.\n. Apply antibiotic ointment to prevent infection.\n. Watch for signs of infection such as redness, pain, swelling, or pus. If you see them, get medical help right away.\n\n3. Get Medical Help\n\n. See a health care provider about any human bite because there is a high risk of infection. Even minor bites can easily become infected.\n. Tell the health care provider if the person has stiffness, lack of mobility, or numbness in the area. There may be damage to tendons or nerves.\n. Deeper bite wounds may require stitches.\n. The health care provider may give a tetanus shot or booster.\n. The health care provider may prescribe antibiotics." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Human Bites Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Stop Bleeding"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Clean and Protect"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Get Medical Help"))
        
        return attributedString
    }
    
    func I1()->NSAttributedString {
        let string = "Insect Sting Allergy Treatment\n\nIf the person does not have severe allergy symptoms:\n\n 1. Remove the Stinger\n\nScrape the area with the edge of a credit card or straight edge object to remove it.\nDon't pinch the stinger or use tweezers -- that can inject more venom.\n\n  2. Control Swelling\n \nIce the area.\n If you were stung on your arm or leg, elevate it.\n Remove any tight-fitting jewelry from the area of the sting. As it swells, rings or bracelets might be difficult to remove.\n\n3. Treat Symptoms\n\n For pain, take an over-the-counter painkiller like acetaminophen or ibuprofen. Do not give aspirin to anyone under age 19.\n For itchiness, take an antihistamine. You can also apply a mixture of baking soda and water or calamine lotion.\n\n 4. Follow-Up\n It might take 2-5 days for the area to heal. Keep it clean to prevent infection." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Insect Sting Allergy Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Remove the Stinger"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Control Swelling"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Treat Symptoms"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("4. Follow-Up"))
        
        return attributedString
    }
    func I2()->NSAttributedString {
        let string = "Insect Bites and Stings (Children)\n\nCall Doctor If:\n\n. Your child has been bitten or stung near the mouth\n. The area seems to be getting larger or redder or is oozing, which are signs of infection.\n\n1. Remove the Stinger (for Honeybee Stings)\n\n.Honeybees are the only insects that leave a stinger in the skin. Scrape the area with a fingernail or credit card to remove it.\n  Don't pinch the stinger with your fingers or tweezers -- that can inject more venom.\n\n 2. Clean the Area\n\n. Wash the bite or sting with mild soap and water.\n\n 3. Treat Symptoms\n\n. Remove any tight jewelry from the area of the bite or sting. It could be hard to get off once the area swells.\n. Ice the area for 10 minutes and then remove the ice for 10 minutes. Then repeat.\n. If the sting was on an arm or leg, elevate the area.\n. Pain relievers that are formulated for babies or children, such as acetaminophen (Tylenol) or ibuprofen (Advil, Motrin) can help. Be sure to follow the dosing instructions on the bottle. If your child is under the recommended age, call a pediatrician.\n.  An antihistamine formulated for children may help with swelling and itch. Call a pediatrician before using an antihistamine in infants or toddlers.\n. Apply a mixture of baking soda and water or calamine lotion for itch." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Insect Bites and Stings (Children)"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Remove the Stinger (for Honeybee Stings)"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Clean the Area"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Treat Symptoms"))
        
        return attributedString
    }
    func K1()->NSAttributedString {
        let string = "Knee Dislocation Treatment\n\n1. Call 911 or Go to the Emergency Room\n\n 2. Control Swelling\n\n Ice the area.\n\n   3. Immobilize Dislocation\n\n Immobilize leg above and below the injured knee. Cardboard, magazines, or other stiff material can be used as splints.\n Do not try to push knee back into its original position. Manipulating a dislocated joint can cause severe injury.\n\n 4. Follow Up\n\n At the hospital, a doctor will realign the joint, perhaps under anesthesia, and assess how much the dislocation has damaged the bones and surrounding tissues and blood vessels.\n  Treatment may include stabilizing the knee with splints. Surgery is sometimes necessary." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Knee Dislocation Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Call 911"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Control Swelling"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Immobilize Dislocation"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("4. Follow Up"))
        
        return attributedString
    }
    func K2()->NSAttributedString {
        let string = "Knee Injury Treatment\n\n1. Control Swelling\n\n Use the RICE method:\n\n Rest the knee.\n Ice the area.\nCompress with a wrap or elastic sleeve.\nElevate the knee as much as possible.\n\n2. Treat Symptoms\n For pain, give over-the-counter pain medication such as ibuprofen or acetaminophen.\n\n3. When to Call a Doctor\n\nMake an appointment with a doctor if you still have pain after two weeks of home treatment, if the knee becomes warm, or if you have fever along with a painful, swollen knee.\n\n 4. Follow Up\n\nIf you seek medical help, the doctor will examine the knee and may do X-rays or other methods of imaging. Medical treatments may include anti-inflammatory drugs, draining fluid, physical therapy, crutches or braces, or surgery." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Knee Injury Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Control Swelling"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Treat Symptoms"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. When to Call a Doctor"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("4. Follow Up"))
        
        return attributedString
    }
    func L1()->NSAttributedString {
        let string = "An Overview of Labor Signs\n\n1. Look for Signs of Labor\n\n Signs that labor has begun include:\n.Contractions that come at regular intervals, increase in frequency, do not stop when the woman changes position or relaxes, and may cause pelvic pressure and discomfort or dull ache in the back or lower abdomen\n. A sudden gush or a steady trickle of fluid when the amniotic membrane ruptures ('water breaks')\n.Pink or slightly bloody mucus discharged into the vagina\n.The fetus lowers into the pelvis, which may cause more frequent urination\n\n2. When to Call a Health Care Provider\n\nCall the health care provider right away if:\n.In first pregnancy, contractions are very uncomfortable and coming every 5 minutes for 1 hour. This timing, however, may vary. Ask your health care provider what they recommend.\n.In subsequent pregnancies, contractions are coming every 7 to 10 minutes for an hour. This timing, however, may vary. Ask your health care provider what they recommend.\n. The woman's 'water breaks,' even without contractions. She should avoid baths, douching, tampons, or sexual intercourse.\n. The woman has vaginal bleeding (more than spotting)." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("An Overview of Labor Signs"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Look for Signs of Labor"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. When to Call a Health Care Provider"))
        
        return attributedString
    }
    func M1()->NSAttributedString {
        
        let string = "Migraine Headache \n\n1. Treat Symptoms\n\n.Have the person rest in a cool, dark room.\n.Apply a cool compress or ice pack to the painful area.\n. Massage the scalp.\n. Give acetaminophen (Tylenol) or ibuprofen (Advil, Motrin) for pain. Discuss with a doctor which medications would be best if the person has liver or kidney disease or heart failure.\n\n 2. When to Seek Medical Help\n\n. See a health care provider if the headache persists or recurs.\n. See a health care provider immediately or go to a hospital emergency room for a headache with stiff neck, fever, vomiting, or numbness or weakness in limbs or if the person has trouble speaking.\n\n 3. Follow Up\n\nIf you seek medical help:\n. The health care provider will do an exam and may recommend treatment or lifestyle changes to prevent migraines." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Migraine Headache "))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Treat Symptoms"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. When to Seek Medical Help"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Follow Up"))
        
        return attributedString
    }
    func M2()->NSAttributedString {
        let string = "Muscle Strain Treatment\n\n1. Control Swelling and Prevent Further Injury With PRICE\n\n.Protect by applying an elastic bandage, sling, or splint.\n.Rest the muscle for at least a day.\n.Ice immediately, and continue to ice for 10 to 15 minutes every hour, for 2-3 days.Compress by gently wrapping with an Ace or other elastic bandage. (Don't wrap tightly.)\n.Elevate injured area above the person's heart level, if possible, for at least 24 hours.\n\n2. Manage Pain and Inflammation\n\n.Take an over-the-counter pain medication like aspirin or ibuprofen (Advil, Motrin). Do not give aspirin to anyone under age 18.\n\n 3. Follow Up\n\n.Elevate and ice the area every 3 to 4 hours after the first day.\n\n 4. When to Call a Doctor\n\n Call a health care provider if:\n.After a day or two the person can't move or put weight on the affected area.\n.The injured area is cool, pale, or changes color.\n. There is tingling or numbness.\n. There is new or severe pain.\n. The person needs advice on how (and how soon) to resume normal exercise and activity." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Muscle Strain Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Control Swelling and Prevent Further Injury With PRICE"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Manage Pain and Inflammation"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Follow Up"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("4. When to Call a Doctor"))
        
        return attributedString
    }
    func N1()->NSAttributedString {
        let string = "Nail Injuries Treatment\n\n1. When to See a Health Care Provider\n\n. Go to an emergency room or call a health care provider quickly if:\n. The finger or toe is deformed, which may indicate fracture or dislocation.\n. The wound looks deep or long enough to need stitches.\n. Discoloration or a bruise under the nail covers more than a quarter of the nail or there is continuing, intense pain.\n. The nail is completely torn off or partially cut off from a crush injury or cut.\n\n 2. Stop Bleeding\n\n.Apply direct pressure with a clean cloth.\n\n3. Clean and Protect the Wound\n\n.If the nail is torn, use sterile scissors to cut off rough edges to prevent further injury.\n.Clean the wound and torn nail area with soap and warm water.\n.Apply antibiotic ointment and bandage.\n\n 4. Treat Symptoms\n\n. For swelling, ice the area.\n. For pain, give acetaminophen (Tylenol) or ibuprofen (Advil, Aleve).\n\n 5. Follow Up\n\n. Continue to use ice and over-the-counter pain medication as needed. Pain and swelling should clear up within a week. It can take several months for a nail that has separated from the nailbed to grow back.\n.Change the bandage daily. If signs of infection develop -- such as pus, redness, or heat around the nail or a red streak extending from the wound -- call a health care provider promptly.\n. The person may need a tetanus shot or booster, depending on the date of last booster shot.\n. If the person sees a health care provider, the health care provider will determine if there is a fracture or if tissue under the nail needs repair and may remove the nail to make the repair. The health care provider may make a hole in the nail to drain blood and give a tetanus shot if needed." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Nail Injuries Treatment"))
        
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. When to See a Health Care Provider"))
        
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Clean and Protect the Wound"))
        
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Stop Bleeding"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("4. Treat Symptoms"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("5. Follow Up"))
        return attributedString
    }
    func N2()->NSAttributedString {
        let string = "Neck Strain Treatment\n\n1. When to Seek Medical Care Immediately\n\n.See a doctor or go to a hospital emergency room if:\n. An accident caused neck strain.\n. Neck pain radiates down arms and/or legs.\n. Headaches, numbness, tingling, or weakness occur with the pain.\n\n2. Ease Muscle Spasms\n\nApply dry or moist heat to the area.\n\n 3. Treat Pain\n\n Give pain medication, such as acetaminophen (Tylenol) or ibuprofen (Advil, Motrin).\n\n  4. Avoid Unnecessary Neck Strain\n\n  When the person is lying down, place a small pillow under the nape of the neck to align the head and neck.\n\n 5. Follow Up\n\n See a doctor if pain doesn't get better or worsens." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Neck Strain Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. When to Seek Medical Care Immediately"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Treat Pain"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("4. Avoid Unnecessary Neck Strain"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("5. Follow Up"))
        
        return attributedString
    }
    func P1()->NSAttributedString {
        let string = "Poisoning Treatment\n\nIf the patient has collapsed, or is not breathing, ring 1122.\nIf you, or someone in your care, may have been poisoned, do not wait for symptoms to occur. Take these first aid steps, then contact the Poisons Information Centre\n\n Swallowed Poison\n\n1. Give the person who has swallowed the poison a sip of water.\n2. If safe to do so, take the poison container to the telephone. Alternatively, if the poison container is contaminated, note down the product name and any ingredients listed. Take this note with you to the telephone.\n3. Call the Poisons Information Centre on 13 11 26.\n4. Do not try to make them vomit. Do not use Ipecac Syrup unless recommended by the Poisons Information Centre or your doctor.\n\nPoison in the Eye\n\n1. Flood the eye with water from a slowly running tap or a cup or jug.\n2. Continue to flush for 15 minutes, holding the eyelids open.\n3. If safe to do so, take the poison container to the telephone. Alternatively, if the poison container is contaminated, note down the product name and any ingredients listed. Take this note with you to the telephone.\n4. Call 1122\n\n Poison on the Skin\n\n1. Remove contaminated clothing, taking care to avoid contact with the poison.\n\t Flood skin with running water.\n2. Wash gently with soap and water and rinse well.\n3. If safe to do so, take the poison container to the telephone. Alternatively, if the poison container is contaminated, note down the product name and any ingredients listed. Take this note with you to the telephone.\n4. Call 1122\n\n Inhaled Poison\n\n1. Immediately get the person to fresh air, without placing yourself at risk.\n2. Avoid breathing fumes.\n3. If it is safe to do so, open doors and windows wide.\n4. If the victim isn't breathing, start 'mouth-to-mouth' resuscitation and call 1122\n5. If safe to do so, take the poison container to the telephone. Alternatively, if the poison container is contaminated, note down the product name and any ingredients listed. Take this note with you to the telephone.\n6. Call the Poisons Information Centre" as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Poisoning Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Swallowed Poison"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Swallowed Poison"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Poison in the Eye"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Poison on the Skin"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString(" Inhaled Poison"))
        
        return attributedString
    }
    func P2()->NSAttributedString {
        let string = "Panic Attacks Treatment\n\n1. Calm the Person\n\n.Ask the person what you can do to help.\n.Reassure the person that the attack will probably pass in a few minutes.\n.Encourage the person to take slow, even breaths.\n.Do not minimize the person's symptoms.\n.If unable to calm the person, take him or her to see a health care provider right away.\n\n 2. Follow Up\n\n. See a health care provider if the person has had more than one panic attack. This can lead to problems such as depression, agoraphobia (fear of open or public spaces), or substance abuse.\n. The health care provider may refer the person to a mental health professional for therapy and medication." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Panic Attacks Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Calm the Person"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Follow Up"))
        
        return attributedString
    }
    func R1()->NSAttributedString {
        let string = "Rabies Treatment\n\n1. Stop Bleeding\n\n. Apply sustained pressure for several minutes.\n\n 2. Clean Wound\n. Wash with clean water and gentle soap for 15 minutes.\n\n 3. Gather Information About Animal\n\n. Notify the local health department or animal control about the animal's possible whereabouts.\n.If the animal is a pet, get owner's contact information.\n\n4. See a Health Care Provider Immediately\n. Do not wait for symptoms to appear.\n. If possible, bring information about the animal.\n. If the person was in an enclosed area with a bat, see a health care provider whether or not there is a bite wound. The person may have been bitten and not know it.\n\n 5. Follow Up\n\n. If there is any risk of rabies infection, the health care provider will recommend anti-rabies treatment. This may include a series of shots.\n. The person may require a tetanus shot, depending on the date of the last shot." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Rabies Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Stop Bleeding"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Gather Information About Animal"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("4. See a Health Care Provider Immediately"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("5. Follow Up"))
        
        
        return attributedString
    }
    func R2()->NSAttributedString {
        let string = "Rashes (Children)\n\n1. Find the Cause\n\n.Try to figure out whether the rash is due to coming into contact with a common irritant such as poison ivy, chemicals, soaps, nickel jewelry, or a pet.\n.Could it be a diaper rash? Make sure you are changing the diapers frequently and applying protective diaper cream after cleaning the area. If this does not help, see your doctor.\n\n2. Clean the Skin\n\n.Wash the rash with mild soap but don't scrub. Rinse with warm water.\n. Pat the skin dry, rather than rubbing it.\n. Don't cover the rash.\n\n 3. Treat Symptoms\n\n. Put a wet cloth on the rash to ease pain and itching.\n. Trim your child's fingernails to help prevent scratching.\n. Put soft gloves on your child at night to avoid scratching." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Rashes (Children)"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Find the Cause"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Clean the Skin"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Treat Symptoms"))
        
        return attributedString
    }
    func S1()->NSAttributedString {
        let string = "Seizures Treatment\n\n1. Prevent Choking\n\n.Loosen clothing around the person's neck.\n.Roll the person on his or her side to keep the airway open.\n. Don't put anything into the person's mouth.\n\n 2. Protect From Injury\n\n. Move sharp objects, such as glassware or furniture, away from the person.\n. Ask bystanders to give the person room.\n. Do not restrain or hold down the person.\n\n 3. Treatment\n\n. Medications or various blood tests and imaging may be needed.\n\n 4. Follow Up\n\n. Stay with the person until emergency help arrives." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Seizures Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Prevent Choking"))
        attributedString.addAttributes(boldFontAttributeforheading, range:  string.rangeOfString("2. Protect From Injury"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString(" 3. Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("4. Follow Up"))
        
        return attributedString
    }
    func S2()->NSAttributedString {
        let string = "Smoke Inhalation Treatment\n\n1. Get Emergency Help If the Person:\n\n.Is unconscious\n.Is dizzy or confused\n.Has chest pain or tightness\n.Is coughing or choking violently\n.Has wheezing, shortness of breath, or irregular breathing\n.Has ash or smoke around mouth and nose\n.Has burns inside mouth, throat, and nose\n.Has swollen airways\n.Has black or gray saliva\n.Is nauseated or vomiting\n.Is hoarse\n.Has double or blurry vision\n.Has numbness or tingling in his or her extremities\n\nIf the person is alert, ask if he or she has a lung disease such as COPD or asthma, and check to see if the person's acute inhaler is nearby for the person to self administer.\n\n 2. Get the Person to Safety\n\n. Move the person into fresh air if you can do so safely.\n.Sit or lay the person down, but not on back if the person is vomiting or coughing up sputum.\n\n3. Give CPR\n\n. While waiting for help, if the person is not breathing, give CPR:\n. For a child, start CPR for childrenFor an adult, start adult CPR.\n. If the person has pale and clammy skin, glazed eyes, sweating, rapid and shallow breathing, weakness, dizziness, or vomiting:\n.Treat for shock. See Shock Treatment.4. Go to a Hospital Emergency Room\n. The person should be examined immediately, even if there are no symptoms.\n. Damage from toxin inhalation may not show up for hours and can worsen quickly.\n\n 5. Follow Up\n\n.  At the hospital, the next steps depend on the particular case.\n.   A doctor will examine the person's airways for damage, do tests, and may administer oxygen.\n.  The person may be hospitalized.\n.  An antibiotic, bronchodilator, inhaled cortisone, or other medication may be prescribed." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Smoke Inhalation Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Get Emergency Help If the Person:"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Get the Person to Safety"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Give CPR"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("4. Go to a Hospital Emergency Room"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("5. Follow Up"))
        return attributedString
    }
    func S3()->NSAttributedString {
        let string = "Snakebite Treatment\n\n1. Note the Snake's Appearance\n\n.Be ready to describe the snake to emergency staff.\n\n2. Protect the Person\n\n. While waiting for medical help:\n.  Move the person beyond striking distance of the snake.\n. Have the person lie down with wound below the heart.\n. Keep the person calm and at rest, remaining as still as possible to keep venom from spreading.\n. Cover the wound with loose, sterile bandage.\n. Remove any jewelry from the area that was bitten.\n. Remove shoes if the leg or foot was bitten.\n\n Do not:\n. Cut a bite wound\n. Attempt to suck out venom\n. Apply tourniquet, ice, or water\n. Give the person alcohol or caffeinated drinks or any other medications\n\n 3. Follow Up\n\n If you treat the bite at home:\n\n. Contact a health care provider. The person may need a tetanus shot. Tetanus boosters should be given every 10 years.\n.At the hospital, treatment will depend on the type of snake.\n. If the snake was venomous, the person will be given anti-venom treatment.\n. A tetanus shot may be given, depending on date of last injection." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Snakebite Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Note the Snake's Appearance"))
        attributedString.addAttributes(boldFontAttributeforheading, range:  string.rangeOfString("2. Protect the Person"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Follow Up"))
        
        return attributedString
    }
    func S4()->NSAttributedString {
        let string = "Stomachache and Nausea (Children)\n\nCall Doctor If:\n\nThe child has a stomachache and any of the following:\n. Pain that happens more often or gets worse\n. Pain that moves from the belly button to the lower right of the abdomen\n. Trouble walking because of pain\n. No appetite for a day or longer\n. Green or yellow vomit or vomit that contains blood or flecks that look like coffee grounds\n. Symptoms of dehydration such as darker urine and fewer wet diapers\n. Black or bloody stool\n.Problems passing stool\n.A rash that looks like bruises on the legs and buttocks\n.Headache and sore throat along with stomach pain\n. Pain when urinating\n\nTreating Symptoms of Your Child's Stomachache\n\n. Have the child lie down and rest.\n. Don't give the child fluids for about 2 hours after the last vomiting episode. Then give the child clear fluids such as water or flat soda. Start with just a sip at a time.\n. Keep a container nearby in case the child vomits.\n. If the child vomits more than once, watch for signs of dehydration, such as decreased urination or dry diapers, dry lips, and crying without tears.\n. If you think the child could be constipated, put him on the toilet. Passing a stool may ease the pain.\n. Sit the child in warm water to help release a stool if you think the child is constipated.\n. Avoid giving ibuprofen (Advil, Motrin), pain medicine, or laxatives." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Stomachache and Nausea (Children)"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Call Doctor If:"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Treating Symptoms of Your Child's Stomachache"))
        return attributedString
    }
    func S5()->NSAttributedString {
        let string = "Swallowed Object Treatment\n\n1. If Airway Is Blocked\n\nFor an adult or child over 12 months, see Choking Treatment.\n\n 2. If Airway Is Partially Blocked\n\n. Encourage the person to cough to dislodge swallowed object.\n.  Do not perform Heimlich maneuver, thump the back, or attempt to remove object.\n\n 3. When to See a Doctor\n\n See a doctor immediately if\n\n. The person has swallowed a battery. See Battery Ingestion Treatment.\n. The person may have swallowed something poisonous. See Poisoning Treatment.\n.  The person swallowed a sharp object or something metal.\n.  The object may be stuck in the esophagus.\n.  The person is coughing, wheezing, or vomiting.\n\n 4. Follow Up\n\n.  If you see a doctor, follow-up will depend on the type and location of the swallowed object and severity of symptoms.\n.  The doctor may order X-rays to locate the object in the body.\n.  The doctor may try to remove it.\n.  In most cases, swallowed objects pass through the system without causing injury or requiring surgery.\n.  If you do not see a doctor after an object is swallowed or if your doctor asks you to:\n.  Check stools for the object.\n.  Call doctor if the object doesn't show up in stools within seven days." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Swallowed Object Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. If Airway Is Blocked"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. If Airway Is Partially Blocked"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. When to See a Doctor"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString(" 4. Follow Up"))
        
        return attributedString
    }
    func T1()->NSAttributedString {
        let string = "Teething Pain\n\n1. Offer Something to Chew on\n\n. Use a firm rubber teether.\n. Avoid teethers filled with liquid, which can leak, or freezable teethers, which may be too cold or hard.\n. Never tie a teether around a baby's neck -- it's a choking hazard.\n\n 2. Soothe the Gums\n \n.Gently massage the gums with a cool wet washcloth or a clean finger.\n. If your child is eating solid foods, offer cold applesauce or yogurt.\n\n 3. Use Medication if a Pediatrician Recommends It\n\n. Use baby acetaminophen (Tylenol) to dull pain. Do not use ibuprofen unless the baby is at least 6 months old.\n. Do not use topical pain medicine that contains benzocaine. They could cause dangerous side effects. Benzocaine can be found in over-the-counter products such as Baby Orajel.\n\n 4. Prevent Rash\n\n. Keep a cloth with you to wipe away drool from baby's chin." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Teething Pain"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Offer Something to Chew on"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Soothe the Gums"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Use Medication if a Pediatrician Recommends It"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("4. Prevent Rash"))
        return attributedString
    }
    func T2()->NSAttributedString {
        let string = "Toxic Shock Syndrome Treatment\n\n1. Seek Medical Help Immediately\n\n. Go to a hospital emergency room or see a doctor for these symptoms, especially if the person has been using tampons, a diaphragm, or contraceptive sponge or has a skin wound or infection:\n.  High fever that appears suddenly\n.  Faintness\n. Headache\n. Muscle aches\n. Vomiting\n. Diarrhea\n. Sunburn-like rash\n. Confusion\n\n 2. Follow Up\n\n.The doctor will do an exam and blood tests.\n.If toxic shock syndrome is diagnosed, the person will likely be hospitalized and treated with intravenous antibiotics." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Toxic Shock Syndrome Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Seek Medical Help Immediately"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Follow Up"))
        
        return attributedString
    }
    
    
    func V2()->NSAttributedString {
        let string = "Vomiting and Nausea\n\n1. See a Health Care Provider if Needed\n\n.Get medical care if the person has any of the following symptoms:\n. Can't keep down liquids or foods for more than 24 hours\n. Fever with abdominal pain\n. Signs of dehydration (dizziness; decreased, dark urination; fatigue)\n. Unable to take medication the person normally takes\n.Nausea or vomiting is due to surgery, anticancer drugs, motion sickness, pregnancy, or vertigo.\n.Medication may be a possible treatment.\n\n2. Self Care for NauseaHave the person drink small amounts of water, sports drinks, or clear liquids.\n\nIf the person can keep it down, give the person light, bland foods like bread and crackers.\n\n3. Self Care for VomitingHave the person drink small amounts of water, sports drinks, or clear liquids.\n\n. Don't give the person solid food until vomiting has stopped.\n. When the person can tolerate food, try small amounts of the BRAT diet: bananas, rice, applesauce, and toast.\n\n 4. Follow Up\n\n.If the person goes to a health care provider, he or she will do an exam and may run tests to determine the cause of nausea or vomiting. Tests may include blood work and X-rays.\n. Depending on the cause, treatment may include IV fluids and medication." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Vomiting and Nausea"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. See a Health Care Provider if Needed"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Self Care for Nausea"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Self Care for Vomiting"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("4. Follow Up"))
        
        return attributedString
    }
    func V1()->NSAttributedString {
        let string = "Vaginal Bleeding Treatment\n\n1. See a Health Care Provider\n\n Call for an appointment with a health care provider. While many causes are minor, others can be serious.\n\n 2. Monitor Symptoms\n\nKeep track of your menstrual cycle to report symptoms to a doctor. On a calendar, take note of the dates and length and amount of bleeding (light, medium, heavy, or spotting).\n\n3. Follow Up\n\n.The health care provider will ask about your menstrual cycle and health history and do an exam to find the cause of bleeding.\n. The health care provider may also order blood tests, transvaginal ultrasound, or endometrial biopsy.\n. Uterine fibroids, hormonal imbalances, medications, polycystic ovary syndrome, gynecological cancers, and sexually transmitted infections are some causes of abnormal vaginal bleeding." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Vaginal Bleeding Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. See a Health Care Provider"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. Monitor Symptoms "))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Follow Up"))
        
        return attributedString
    }
    func V3()->NSAttributedString {
        let string = "Vomiting During Pregnancy Treatment\n\n1. Try Changing Eating Patterns\n\n. For morning nausea, eat toast, cereal, crackers, or other dry foods before getting out of bed.\n. Eat cheese, lean meat, or other high-protein snack before bedtime.\n. Sip fluids, such as clear fruit juices, water, or ice chips, throughout day. Don’t drink lots of fluid at one time.\n. Eat small meals or snacks every two to three hours instead of three large meals per day.\n. Don’t eat fried, greasy, or spicy foods.\n.Avoid foods with strong odors that are bothersome. Or eat foods cold or at room temperature.\n\n2. When to Call a Doctor\n\nSeek medical help if vomiting is so severe or constant that the person can’t keep down fluids or food.\n\n 3. Follow Up\n\n The doctor may need to treat the person for dehydration.\n.The doctor may recommend medication to control vomiting during pregnancy." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("Vomiting During Pregnancy Treatment"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("1. Try Changing Eating Patterns"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("2. When to Call a Doctor"))
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. Follow Up"))
        
        return attributedString
    }
    func BB()->NSAttributedString {
        let string = "\r\rUse:\r\tSomogel of Dactarain gel in mouth at infected areas.\rApply after every 4 hours.\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\rPrescribedBy:Dr Hasham,Allied Hospital Faisalabad." as NSString
        
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(15.0)])
        let boldFontAttributeforheading = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19.0)]
        
        //part of string to be bold
        attributedString.addAttributes(boldFontAttributeforheading, range: string.rangeOfString("3. When to Call a Doctor"))
        
        return attributedString
    }
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if let identifier = segue.identifier {
            switch identifier  {
                
            case History.segueIdentifier:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = attributedText()
                    
                }
            case History.segueIdentifier2:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = attributedText2()
                    
                }
            case History.segueIdentifier3:
                if let tvc = segue.destinationViewController as? firstAid1_textview{
                    tvc.text = attributedText3()
                    
                }
            case History.segueIdentifier4:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = attributedText4()
                    
                }
            case History.segueIdentifier5:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = attributedText5()
                    
                }
            case History.segueIdentifier6:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = attributedText6()
                    
                }
            case History.segueIdentifier7:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = attributedText7()
                    
                }
            case History.segueIdentifier8:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = attributedText8()
                    
                }
            case History.segueIdentifier9:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = attributedText9()
                    
                }
            case History.segueIdentifier10:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = attributedText10()
                    
                }
            case History.segueIdentifier11:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = attributedText11()
                    
                }
            case History.B1:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = B1()
                }
            case History.B2:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = B2()
                }
            case History.B3:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = B3()
                }
            case History.B4:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = B4()
                }
            case History.B5:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = B5()
                }
            case History.B6:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = B6()
                }
            case History.B7:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = B7()
                }
            case History.B8:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text =  B9()
                }
            case History.B10:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = B10()
                }
            case History.B9:
                if let tvc = segue.destinationViewController as? firstAid1_textview{
                    tvc.text = B9()
                }
            case History.B11:
                if let tvc = segue.destinationViewController as? firstAid1_textview{
                    tvc.text = B11()
                }
            case History.C1:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = C1()
                }
            case History.C2:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = C2()
                }
            case History.C3:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = C3()
                }
            case History.C4:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = C4()
                }
            case History.C5:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = C5()
                }
            case History.D1:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = D1()
                }
            case History.D2:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = D2()
                }
            case History.D3:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = D3()
                }
            case History.D4:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = D4()
                }
            case History.D5:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = D5()
                }
            case History.E1:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = E1()
                }
            case History.E2:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = E2()
                }
            case History.E3:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = E3()
                }
            case History.E4:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = E4()
                }
            case History.E5:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = E5()
                }
            case History.F1:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = F1()
                }
            case History.F2:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = F2()
                }
            case History.F3:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = F3()
                }
            case History.F4:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = F4()
                }
            case History.G1:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = G1()
                }
            case History.G2:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = G2()
                }
                
            case History.H11:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = H11()
                }
            case History.H1:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = H1()
                }
            case History.H2:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = H2()
                }
            case History.H3:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = H3()
                }
            case History.H4:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = H4()
                }
                
            case History.I1:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = I1()
                }
            case History.I2:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = I2()
                }
                
            case History.K1:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = K1()
                }
            case History.K2:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = K2()
                }
            case History.L1:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = L1()
                }
            case History.M1:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = M1()
                }
            case History.M2:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = M2()
                }
            case History.N1:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = N1()
                }
            case History.N2:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = N2()
                }
            case History.P1:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = P1()
                }
            case History.P2:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = P2()
                }
            case History.R1:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = R1()
                }
            case History.R2:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = R2()
                }
            case History.S1:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = S1()
                }
            case History.S2:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = S2()
                }
            case History.S3:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = S3()
                }
            case History.S4:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = S4()
                }
            case History.S5:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = S5()
                }
            case History.T1:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = T1()
                }
            case History.T2:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = T2()
                }
            case History.V1:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = V1()
                }
            case History.V2:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = V2()
                }
            case History.V3:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = V3()
                }
            case History.W1:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = W1()
                }
            case History.W2:
                if let tvc = segue.destinationViewController as? firstAid1_textview {
                    tvc.text = W2()
                    
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
    