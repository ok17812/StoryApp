//
//  StoryBrain3.swift
//  StoryApp
//
//  Created by Evan Chang on 8/11/20.
//  Copyright © 2020 Evan Chang. All rights reserved.
//

import Foundation

struct StoryBrain3 {
     let example = [
    /*0*/  Story(
                text: "Charlotte recently graduated Harvard and has a high-paying job waiting for her. She's motivated, excited, and hard-working. Charlotte’s parents divorced while she was in high school. Her father abandoned the family at that time and has not been supportive since, rarely and unpredictably checking in with Charlotte. She and her mother moved in to live with her grandparents at the time of the divorce. Charlotte’s mom is financially irresponsible and emotionally unstable.",
                question: "",
                choice1: "Click to Continue",
                choice1Destination: 1,
                choice2: "",
                choice2Destination: 1
            ),
    /*1*/   Story(
                text: "Charlotte’s grandparents paid for her college and financially supported her mom. While at college, Charlotte drifted apart from her mother, and this has been a relief for Charlotte. Her grandparents are getting old and they want Charlotte to take care of her mom when they are gone. Charlotte feels conflicted: she is excited about her new independence and does not want to be burdened by her mother’s needs, but she also feels some sense of responsibility for the wellbeing of her mother and feels obligated to take her grandparents’ wishes seriously.",
                question: "Is it morally permissible for Charlotte to refuse to help her mother?",
                choice1: "Yes",
                choice1Destination: 2,
                choice2: "No",
                choice2Destination: 3
            ),
    /*2*/        Story(
            text: "There is an unconditional philosophical view of familial obligations that says by just being a parent, that person is entitled to certain things from you. In practically no other human relationship is love so unconditionally given. The same is true for the child’s love for the parent: it is given unconditionally, and without choice. This unique type of relationship makes the obligations between a child and a parent different from obligations between two friends.",
            question: "",
            choice1: "You chose Yes",
            choice1Destination: 4,
            choice2: "Return to Menu",
            choice2Destination: 4
                ),
     /*3*/       Story(
            text: "Why do you say that? While our moral obligations are different for people that may have hurt us, we must also consider familial obligations. What special obligations do we have for our family? It’s up to the individual to decide whether or not they want to maintain a relationship with their parents. If they helped you, you may want to help them out, but some say that there is no obligation to.",
            question: "",
            choice1: "You chose No",
            choice1Destination: 5,
            choice2: "Return to Menu",
            choice2Destination: 5
                ),
    /*4*/        Story(
           text: "There is an unconditional philosophical view of familial obligations that says by just being a parent, that person is entitled to certain things from you. In practically no other human relationship is love so unconditionally given. The same is true for the child’s love for the parent: it is given unconditionally, and without choice. This unique type of relationship makes the obligations between a child and a parent different from obligations between two friends.",
           question: "",
           choice1: "You chose Yes",
           choice1Destination: 10,
           choice2: "Return to Menu",
           choice2Destination: 10
               ),
    /*5*/       Story(
           text: "Why do you say that? While our moral obligations are different for people that may have hurt us, we must also consider familial obligations. What special obligations do we have for our family? It’s up to the individual to decide whether or not they want to maintain a relationship with their parents. If they helped you, you may want to help them out, but some say that there is no obligation to.",
           question: "",
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
