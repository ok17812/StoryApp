//
//  aboutController.swift
//  StoryApp
//
//  Created by Evan Chang on 9/2/20.
//  Copyright © 2020 Evan Chang. All rights reserved.
//

import UIKit

extension UITapGestureRecognizer {
    func didTapAttributedTextInLabel(label: UILabel, inRange targetRange: NSRange) -> Bool {
        // Create instances of NSLayoutManager, NSTextContainer and NSTextStorage
        let layoutManager = NSLayoutManager()
        let textContainer = NSTextContainer(size: CGSize.zero)
        let textStorage = NSTextStorage(attributedString: label.attributedText!)

        // Configure layoutManager and textStorage
        layoutManager.addTextContainer(textContainer)
        textStorage.addLayoutManager(layoutManager)

        // Configure textContainer
        textContainer.lineFragmentPadding = 0.0
        textContainer.lineBreakMode = label.lineBreakMode
        textContainer.maximumNumberOfLines = label.numberOfLines
        let labelSize = label.bounds.size
        textContainer.size = labelSize

        // Find the tapped character location and compare it to the specified range
        let locationOfTouchInLabel = self.location(in: label)
        let textBoundingBox = layoutManager.usedRect(for: textContainer)
        //let textContainerOffset = CGPointMake((labelSize.width - textBoundingBox.size.width) * 0.5 - textBoundingBox.origin.x,
                                              //(labelSize.height - textBoundingBox.size.height) * 0.5 - textBoundingBox.origin.y);
        let textContainerOffset = CGPoint(x: (labelSize.width - textBoundingBox.size.width) * 0.5 - textBoundingBox.origin.x, y: (labelSize.height - textBoundingBox.size.height) * 0.5 - textBoundingBox.origin.y)

        //let locationOfTouchInTextContainer = CGPointMake(locationOfTouchInLabel.x - textContainerOffset.x,
                                                        // locationOfTouchInLabel.y - textContainerOffset.y);
        let locationOfTouchInTextContainer = CGPoint(x: locationOfTouchInLabel.x - textContainerOffset.x, y: locationOfTouchInLabel.y - textContainerOffset.y)
        let indexOfCharacter = layoutManager.characterIndex(for: locationOfTouchInTextContainer, in: textContainer, fractionOfDistanceBetweenInsertionPoints: nil)
        return NSLocationInRange(indexOfCharacter, targetRange)
    }
}
    
class aboutController: UIViewController {

    @IBOutlet weak var aboutLabel: UILabel!
    @IBOutlet weak var acknowledgmentLabel: UILabel!
    @IBOutlet weak var CLabel: UILabel!
    @IBOutlet weak var TLabel: UILabel!
    @IBOutlet weak var PLabel: UILabel!
    @IBOutlet weak var VLabel: UILabel!
    
    
    
    override func viewDidLoad() {
           super.viewDidLoad()

        
        let c = NSMutableAttributedString.init(string: "Charlotte’s Family​- \nNational High School Ethics BowlCase Authors- Dustyn Addington, Ariella Buckley, Dominique Déry, Sarah Green, Grayson Holmes, Clare LaFrance, Chris Ng, Tate Overbey, Katie Petrik, Samuel Reis-Dennis, Jeff Sebo, Keshav Singh, Robert Smithson, John Torrey, Brian Wong Check them out at ​https://nhseb.unc.edu/")
        c.addAttributes([NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 18)], range: NSRange(location:0, length:20))
        c.addAttributes([NSAttributedString.Key.underlineStyle: NSUnderlineStyle.thick.rawValue], range: NSRange(location:0, length:20))
        c.addAttribute(.link, value: "https://nhseb.unc.edu/", range: NSRange(location: 306, length: 23))
        CLabel.attributedText = c
        CLabel.layer.cornerRadius = 0
        let tapC = UITapGestureRecognizer(target: self, action: #selector(ClinkPressed(_:)))
        tapC.numberOfTapsRequired = 1
        tapC.numberOfTouchesRequired = 1
        self.CLabel.addGestureRecognizer(tapC)
        
        
        
        
        let t = NSMutableAttributedString.init(string: "Thomson’s Violin- \n'Unconscious violinists and the use of analogies in moral argument' by Eric Wiland University of Missouri-St Louis, Missouri, USA Read the full paper here at ​https://jme.bmj.com/content/medethics/26/6/466.full.pdf")
        t.setAttributes([NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 18)], range: NSRange(location:0, length:17))
        t.addAttributes([NSAttributedString.Key.underlineStyle: NSUnderlineStyle.thick.rawValue], range: NSRange(location:0, length:17))
        t.addAttribute(.link, value: "https://jme.bmj.com/content/medethics/26/6/466.full.pdf", range: NSRange(location: 178, length: 55))
        TLabel.attributedText = t
        TLabel.layer.cornerRadius = 0
        let tapT = UITapGestureRecognizer(target: self, action: #selector(TlinkPressed(_:)))
        tapT.numberOfTapsRequired = 1
        tapT.numberOfTouchesRequired = 1
        self.TLabel.addGestureRecognizer(tapT)
        
        let p = NSMutableAttributedString.init(string: "Programer- \nEvan Chang For inquiries, email ​evanchang17812@hotmail.com")
        p.setAttributes([NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 18)], range: NSRange(location:0, length:10))
        p.addAttributes([NSAttributedString.Key.underlineStyle: NSUnderlineStyle.thick.rawValue], range: NSRange(location:0, length:10))
        PLabel.attributedText = p
        PLabel.layer.cornerRadius = 0
        
        let v = NSMutableAttributedString.init(string: "About Victoria- \nVictoria is a highly motivated student who is pursuing the field of moral philosophy. Through her experience in teaching philosophy and ethics to middle schoolers at the Long Island School for the Gifted, she has realized the importance of explaining ethics in a palatable and fun way. She created this app in order to make philosophy and ethics accessible to everyone as it is lacking in many school curriculums. She hopes you enjoy learning about ethics as much as she does! You can reach her at ​victoria.f.tong@gmail.com")
        v.setAttributes([NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 18)], range: NSRange(location:0, length:15))
        v.addAttributes([NSAttributedString.Key.underlineStyle: NSUnderlineStyle.thick.rawValue], range: NSRange(location:0, length:15))
        VLabel.attributedText = v
        VLabel.layer.cornerRadius = 0
        
       }

    @objc func ClinkPressed(_ gesture: UITapGestureRecognizer) {
       guard let text = self.CLabel.text else { return }
        let CRange = (text as NSString).range(of: "https://nhseb.unc.edu/")
        if gesture.didTapAttributedTextInLabel(label: self.CLabel, inRange: CRange) {
            guard let url = URL(string: "https://nhseb.unc.edu/") else { return }
            UIApplication.shared.open(url)
        }
     }

    @objc func TlinkPressed(_ gesture: UITapGestureRecognizer) {

           guard let text = self.TLabel.text else { return }
           let TRange = (text as NSString).range(of: "https://jme.bmj.com/content/medethics/26/6/466.full.pdf")
           if gesture.didTapAttributedTextInLabel(label: self.TLabel, inRange: TRange) {
            guard let url = URL(string: "https://jme.bmj.com/content/medethics/26/6/466.full.pdf") else { return }
            UIApplication.shared.open(url)
        }
    }
    
}
