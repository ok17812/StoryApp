//
//  StoryBrain2.swift
//  StoryApp
//
//  Created by Evan Chang on 8/11/20.
//  Copyright © 2020 Evan Chang. All rights reserved.
//

import Foundation

struct StoryBrain2 {
     let example = [
        /*0*/  Story(
                    text: "You wake up in the morning and find yourself next to a famous unconscious violinist. He has been found to have a fatal disease, and the Society of Music Lovers has gone through all the available medical records and found that you alone have the right blood type to help. ",
                    question: "",
                    choice1: "Click to Continue",
                    choice1Destination: 1,
                    choice2: "",
                    choice2Destination: 1
                ),
    /*1*/  Story(
                text: "They have therefore kidnapped you, and last night the violinist's circulatory system was plugged into yours, so that your kidneys can be used to extract poisons from his blood as well as your own. If he is unplugged from you now, he will die; but in nine months he will have recovered from his disease, and can safely be unplugged from you.",
                question: "Are you obligated to keep the musician alive?",
                choice1: "Yes",
                choice1Destination: 2,
                choice2: "No",
                choice2Destination: 3
            ),
    /*2*/   Story(
                text: "A utilitarian calculus implies that one is morally obliged to stay connected to the violinist. It doesn’t permanently ruin your life and you could be saving another life just by being patient for 9 months. You also might think, since this is a very important individual, you should do whatever you can to save his life. Would you also think this way if this stranger wasn’t important?",
                question: "If you were kidnapped and someone you disliked was plugged into you, do you still have the same moral obligations?",
                choice1: "You chose Yes",
                choice1Destination: 4,
                choice2: "Click to continue",
                choice2Destination: 4
            ),
    /*3*/        Story(
            text: "People who answer no might say that you have no obligations to strangers. While this musician is famous, he isn’t a family member or someone that is close to you. Do we have obligations to strangers? Sure, we can open the door for a stranger or help them carry something, but where do we draw the line? The Society of Music Lovers also took away your bodily rights without your consent.",
            question: "Would this scenario be different if they asked if the violinist could be plugged into you first?",
            choice1: "You chose No",
            choice1Destination: 4,
            choice2: "Click to Continue",
            choice2Destination: 4
                ),
     /*4*/       Story(
            text: "Now let’s suppose there are two conjoined twins Catherine and Elizabeth that share vital internal organs. A surgeon could separate them, but because their bodies are connected, doing so would enable only one of them to live. That is, the other twin would certainly die if the two were separated.",
            question: "Can one conjoined twin kill her sister to live a better and more fulfilling life by hiring a surgeon to separate them?",
            choice1: "Yes",
            choice1Destination: 5,
            choice2: "No",
            choice2Destination: 6
                ),
    /*5*/        Story(
            text: "Why do you think so? If Elizabeth is willing to have a surgeon separate them and give the organs to Catherine, why shouldn’t Catherine go ahead with the procedure.",
            question: "If one sister isn’t willing to be separated, then can the other one still go ahead and hire a surgeon?",
            choice1: "You chose Yes",
            choice1Destination: 7,
            choice2: "Click to Continue",
            choice2Destination: 7
                   ),
    /*6*/       Story(
            text: "Why do you think so? Is it perhaps selfish to kill a member of your own family just to live a better life for yourself? Who can rightfully decide which sister should be the one to keep the vital organs? What if both sisters want to be removed. Many people say no because too many morally confusing questions arise from allowing one sister to be removed.",
            question: "",
            choice1: "You chose No",
            choice1Destination: 7,
            choice2: "Click to Continue",
            choice2Destination: 7
                       ),
    /*7*/        Story(
            text: "Let’s say that Catherine entered a coma that will last 2 years. Elizabeth very much wants to hire a surgeon and remove herself from her sister. But since Catherine is unable to give her verbal consent, can Elizabeth still go forward with the procedure? There would be many benefits for Elizabeth as she is now able to live a normal life and even start a family, but Catherine would undoubtedly die from the procedure.",
            question: "Is Elizabeth allowed to disconnect herself from her unconscious twin, Catherine?",
            choice1: "Yes",
            choice1Destination: 8,
            choice2: "No",
            choice2Destination: 9
           ),
    /*8*/        Story(
            text: "Elizabeth has no career options if she is connected to her unconscious twin for two years. She will definitely not find a partner. On top of that, Elizabeth didn’t ask to be attached to her sister and has no responsibility to care for Catherine; she did not put her into a coma. An important question to ask ourselves is, 'Does Catherine still have the same moral status as Elizabeth while in this coma?'",
            question: "How does her ability to make decisions affect how we can treat her?",
            choice1: "You chose Yes",
            choice1Destination: 10,
            choice2: "Return to Menu",
            choice2Destination: 10
                            ),
    /*9*/    Story(
             text: "In the previous case involving the violinist, people argued that you had no obligation to save his life since he was only a stranger. In this case, Elizabeth is not a stranger to Catherine: they are family. How does the nature of their connection now change our idea of what is moral. If Elizabeth separates herself from her sister, is she ​letting h​ er sister die or is she actively ​killing ​her sister? Perhaps Elizabeth could wait two years for Catherine to wake up and discuss it with her then.",
             question: "",
             choice1: "You chose No",
             choice1Destination: 11,
             choice2: "Return to Menu",
             choice2Destination: 11
                             ),
/*10*/        Story(
           text: "Elizabeth has no career options if she is connected to her unconscious twin for two years. She will definitely not find a partner. On top of that, Elizabeth didn’t ask to be attached to her sister and has no responsibility to care for Catherine; she did not put her into a coma. An important question to ask ourselves is, 'Does Catherine still have the same moral status as Elizabeth while in this coma?'",
           question: "How does her ability to make decisions affect how we can treat her?",
           choice1: "You chose Yes",
           choice1Destination: 20,
           choice2: "Return to Menu",
           choice2Destination: 20
                           ),
   /*11*/    Story(
            text: "In the previous case involving the violinist, people argued that you had no obligation to save his life since he was only a stranger. In this case, Elizabeth is not a stranger to Catherine: they are family. How does the nature of their connection now change our idea of what is moral. If Elizabeth separates herself from her sister, is she ​letting h​ er sister die or is she actively ​killing ​her sister? Perhaps Elizabeth could wait two years for Catherine to wake up and discuss it with her then.",
            question: "",
            choice1: "You chose No",
            choice1Destination: 20,
            choice2: "Return to Menu",
            choice2Destination: 20
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
