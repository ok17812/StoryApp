//
//  TrolleyVsBridgeController.swift
//  StoryApp
//
//  Created by Evan Chang on 8/11/20.
//  Copyright © 2020 Evan Chang. All rights reserved.
//

import UIKit

class TrolleyVsBridgeController: UIViewController {


    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = storyBrain.changeText()
        questionLabel.text = storyBrain.changeQuestion()
        choice1Button.setTitle(storyBrain.changeButton1(), for: UIControl.State.normal)
        choice2Button.setTitle(storyBrain.changeButton2(), for: UIControl.State.normal)
        imageView.isHidden = false

    }
    
    
    
    @IBAction func choiceMade(_ sender: UIButton) {
          storyBrain.nextStory(SelectedAnswer: sender.currentTitle!)
            storyLabel.text = storyBrain.changeText()
        questionLabel.text = storyBrain.changeQuestion()
            choice1Button.setTitle(storyBrain.changeButton1(), for: UIControl.State.normal)
            choice2Button.setTitle(storyBrain.changeButton2(), for: UIControl.State.normal)
        
        if let buttonText = choice1Button.titleLabel?.text {
            if buttonText == "Yes" {
                choice1Button.isEnabled = false
            }
            else
            {
                choice1Button.isEnabled = true
            }
        
            let reset = storyBrain.destination()
            if reset == 10 {
                if choice2Button.isTouchInside {
                    self.navigationController?.popToRootViewController(animated: true)
                }
            }
            if reset == 4 {
                choice2Button.isHidden = true
            }
            else if reset > 4 && reset < 7 {
                choice2Button.isHidden = false
            }
            
            if reset > 2 {
                imageView.isHidden = true
                
            }
            if reset > 3 && reset < 7 {
                imageView.isHidden = false
                imageView.image = #imageLiteral(resourceName: "Trolley problem")
            }
        }
    }

}
