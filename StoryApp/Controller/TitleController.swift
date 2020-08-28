//
//  ViewController.swift
//  StoryApp/Users/evanchang17812/Desktop/StoryApp/StoryApp/Controller/TrolleyVsBridgeController.swift
//
//  Created by Evan Chang on 8/6/20.
//  Copyright © 2020 Evan Chang. All rights reserved.
//

import UIKit

class TitleController: UIViewController {


    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    @IBOutlet weak var choice3Button: UIButton!
    @IBOutlet weak var choice4Button: UIButton!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    //    storyLabel.text = storyBrain.changeTitle()
    //   choice1Button.setTitle(storyBrain.changeButton1(), for: UIControl.State.normal)
    //    choice2Button.setTitle(storyBrain.changeButton2(), for: UIControl.State.normal)

    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
     //     storyBrain.nextStory(SelectedAnswer: sender.currentTitle!)
     //       storyLabel.text = storyBrain.changeTitle()
     //       choice1Button.setTitle(storyBrain.changeButton1(), for: UIControl.State.normal)
     //       choice2Button.setTitle(storyBrain.changeButton2(), for: UIControl.State.normal)
    }

}


