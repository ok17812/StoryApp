//
//  CharlotteFamilyController.swift
//  StoryApp
//
//  Created by Evan Chang on 8/11/20.
//  Copyright © 2020 Evan Chang. All rights reserved.
//

import UIKit

class CharlotteFamilyController: UIViewController {


    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    @IBOutlet weak var choice3Button: UIButton!
    @IBOutlet weak var choice4Button: UIButton!
    var storyBrain = StoryBrain3()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = false
        storyLabel.text = storyBrain.changeTitle()
        choice1Button.setTitle(storyBrain.changeButton1(), for: UIControl.State.normal)
        choice2Button.setTitle(storyBrain.changeButton2(), for: UIControl.State.normal)

    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
          storyBrain.nextStory(SelectedAnswer: sender.currentTitle!)
            storyLabel.text = storyBrain.changeTitle()
            choice1Button.setTitle(storyBrain.changeButton1(), for: UIControl.State.normal)
            choice2Button.setTitle(storyBrain.changeButton2(), for: UIControl.State.normal)
    }

}
