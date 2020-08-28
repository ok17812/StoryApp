//
//  StoryBrain4.swift
//  StoryApp
//
//  Created by Evan Chang on 8/11/20.
//  Copyright © 2020 Evan Chang. All rights reserved.
//

import Foundation

struct StoryBrain4 {
    let example = [
        /*0*/  Story(
            text: "There was once a very sick woman who was dying from a special disease. No one had the cure except a scientist who discovered it a few years ago. Her husband, Heinz, asked the scientist for the medicine, but it was too expensive. ",
            question: "",
            choice1: "Click to Continue",
            choice1Destination: 1,
            choice2: "",
            choice2Destination: 1
        ),
               /*1*/   Story(
                text: "The scientist said, “I found it, I should make the money.” Although the ingredients were cheap, the greedy scientist charged a lot. Heinz tries every legal means to raise enough money but he couldn’t, so he considers stealing it.",
                question: "Is it right for him to steal the drug?",
                choice1: "Yes",
                choice1Destination: 2,
                choice2: "No",
                choice2Destination: 3
        ),
   /*2*/        Story(
                text: "Without doing one wrong thing, his wife could die. This is a consequentialist view on morality. Consequentialists say that you judge an action based on the consequences of it. For example, lying is generally considered to be wrong. But if lying could save someone in a specific instance, consequentialists would say lying is morally permissible. In this case, people say that human life is more important than the rights of the scientist.",
                question: "",
                choice1: "You chose Yes",
                choice1Destination: 4,
                choice2: "Click to Continue",
                choice2Destination: 4
        ),
    /*3*/       Story(
                text: "Some people believe in strict moral rules like “stealing is wrong no matter what the consequence is”. You might be worried about Heinz going to jail if he gets caught stealing. Is it a risk that Heinz should take? If you were the judge that had to give Heinz his sentence, would you be more understanding of his situation? What if other people also need this drug? It would be wrong for him to steal it for free when others are struggling to find a way to afford it as well.",
                question: "",
                choice1: "You chose No",
                choice1Destination: 4,
                choice2: "Click to Continue",
                choice2Destination: 4
        ),
    /*4*/        Story(
                text: "Does Heinz have a duty/obligation to steal the drug if he doesn't love his wife?",
                question: "",
                choice1: "Yes",
                choice1Destination: 5,
                choice2: "No",
                choice2Destination: 6
        ),
    /*5*/       Story(
                text: "In this case, it doesn’t matter whether or not you like the person or not. It’s about saving a human life. Every life is valuable and we don’t know whether or not the wife was a terrible person.",
                question: "Would you answer differently if we knew that the wife was a terrible person to everyone around her before her sickness?",
                choice1: "You chose Yes",
                choice1Destination: 7,
                choice2: "Return to Menu",
                choice2Destination: 7
        ),
    /*6*/       Story(
                text: "If Heinz doesn’t care whether or not his wife dies, the drugs could be used to save someone else. Heinz would probably not want to risk going to jail saving someone he doesn't love. But what if the wife expects Heinz to steal the drug for her and he doesn’t want to because he doesn’t love her.",
                question: "What should Heinz do in that case?",
                choice1: "You chose No",
                choice1Destination: 8,
                choice2: "Return to Menu",
                choice2Destination: 8
                ),
    /*7*/       Story(
                text: "In this case, it doesn’t matter whether or not you like the person or not. It’s about saving a human life. Every life is valuable and we don’t know whether or not the wife was a terrible person.",
                question: "Would you answer differently if we knew that the wife was a terrible person to everyone around her before her sickness?",
                choice1: "You chose Yes",
                choice1Destination: 10,
                choice2: "Return to Menu",
                choice2Destination: 10
                    ),
    /*8*/       Story(
                text: "If Heinz doesn’t care whether or not his wife dies, the drugs could be used to save someone else. Heinz would probably not want to risk going to jail saving someone he doesn't love. But what if the wife expects Heinz to steal the drug for her and he doesn’t want to because he doesn’t love her.",
                question: "What should Heinz do in that case?",
                choice1: "You chose No",
                choice1Destination: 10,
                choice2: "Return to Menu",
                choice2Destination: 10
                )
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
