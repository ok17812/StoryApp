//
//  StoryBrain.swift
//  StoryApp
//
//  Created by Evan Chang on 8/6/20.
//  Copyright © 2020 Evan Chang. All rights reserved.
//

import Foundation

struct StoryBrain {
    let example = [
/*0*/  Story(
            text: "You are standing by a switch. In the distance, you see a trolley approaching. If it continues on the line, it will run over five cute little children who are tied to the rails, unable to escape. If you flip the switch, the trolley will change its path and run an old man over instead.", question: "Do you flip the switch?",
            choice1: "Yes",
            choice1Destination: 1,
            choice2: "No",
            choice2Destination: 2
        ),
/*1*/   Story(
            text: "Why did you say yes? Was it because you thought saving 5 lives was better than just saving 1 life? This is an example of a ​utilitarian calculus. ​Utilitarianism​ means creating the great amount of ​good​ for the greatest number of ​people. ​Utilitarian philosophers would say that one person dying is better than five people dying.",
            question: "Can you think of an example of ​utilitarianism ​in your everyday life?",
            choice1: "You chose Yes",
            choice1Destination: 3,
            choice2: "Click to continue",
            choice2Destination: 3
        ),
/*2*/        Story(
        text: "Why did you say no? Do you think that killing even ​one​ person is morally wrong? This is what a ​Deontologist ​would say. Deontology is the idea that you have to follow strict moral rules like “killing anyone is wrong” no matter what the consequences are. Deontologists would say even killing one person is wrong.",
        question: "What are some strict moral rules that you live by in your everyday life?",
        choice1: "You chose No",
        choice1Destination: 3,
        choice2: "Click to Continue",
        choice2Destination: 3
            ),
/*3*/      Story(
                 text: "Now, let’s change it up a bit. Instead of standing by a switch, you are standing on a bridge with a very fat man. The bridge is over a trolley track and there are five people tied to the track.",
                 question: "",
                 choice1: "Click to Continue",
                 choice1Destination: 4,
                 choice2: "",
                 choice2Destination: 4
             ),
 /*4*/       Story(
        text: "The trolley is coming from a distance and if it continues on its path, it WILL run over the five people and kill them. However, if you push the fat man off the bridge, he is big enough to stop the trolley from running over the 5 people.",
        question: "Should we push the fat man off the bridge?",
        choice1: "Yes",
        choice1Destination: 5,
        choice2: "No",
        choice2Destination: 6
            ),
/*5*/        Story(
        text: "You are probably thinking that killing one person is better than killing five people but how did this scenario feel different from the one before it? Did it feel more wrong in this scenario? Philosophers and researchers have surveyed thousands of people and found that almost ALL of them feel slightly more guilty pushing the fat man than flipping the switch. That is because in this scenario, you are actively pushing the man and that feels more emotional than just flipping a switch.",
        question: "",
        choice1: "You chose Yes",
        choice1Destination: 7,
        choice2: "Return to Menu",
        choice2Destination: 7
               ),
/*6*/       Story(
        text: "Why did you say no? Some people say that it’s not morally permissible to push the man off because that is considered murder. If you push him, you are intentionally killing him and that could be immoral. Others say that something about pushing the man to his death seems intuitively w​rong. ",
        question: "Do you have that gut feeling telling you that you probably shouldn’t do it?",
        choice1: "You chose No",
        choice1Destination: 8,
        choice2: "Return to Menu",
        choice2Destination: 8
                   ),
/*7*/        Story(
        text: "You are probably thinking that killing one person is better than killing five people but how did this scenario feel different from the one before it? Did it feel more wrong in this scenario? Philosophers and researchers have surveyed thousands of people and found that almost ALL of them feel slightly more guilty pushing the fat man than flipping the switch. That is because in this scenario, you are actively pushing the man and that feels more emotional than just flipping a switch.",
        question: "",
        choice1: "You chose Yes",
        choice1Destination: 10,
        choice2: "Return to Menu",
        choice2Destination: 10
       ),
/*8*/    Story(
         text: "Why did you say no? Some people say that it’s not morally permissible to push the man off because that is considered murder. If you push him, you are intentionally killing him and that could be immoral. Others say that something about pushing the man to his death seems intuitively w​rong. ",
         question: "Do you have that gut feeling telling you that you probably shouldn’t do it?",
         choice1: "You chose No",
         choice1Destination: 10,
         choice2: "Return to Menu",
         choice2Destination: 10
                         ),
]
    
    var choiceDestination = 0
    
    func changeText() -> String {
        return example[choiceDestination].text
    }
    
    func changeQuestion() -> String {
        return example[choiceDestination].question
    }
    
    func changeButton1() -> String {
        return example[choiceDestination].choice1
    }
    
    func changeButton2() -> String {
        return example[choiceDestination].choice2
    }
    
    func destination() -> Int {
        return example[choiceDestination].choice2Destination
    }
    
    mutating func nextStory(SelectedAnswer:String) {
        if SelectedAnswer == example[choiceDestination].choice1 {
            choiceDestination = example[choiceDestination].choice1Destination
        }
        else {
            choiceDestination = example[choiceDestination].choice2Destination
        }
    }
}

