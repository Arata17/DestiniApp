//
//  StoryBrain.swift
//  Destini-iOS13
//
// Created by Shakhaidar Miras
//

import Foundation

struct StoryBrain {
     let storyArray = [
  /*0*/     Story(title: "You see a fork in the road", choice1: "Take a left", choice2: "Take a right", choice1Destination: 1, choice2Destination: 2),
  /*1*/     Story(title: "You see a tiger", choice1: "Shout for help", choice2: "Play dead", choice1Destination: 3, choice2Destination: 4),
  /*2*/     Story(title: "You find a treasure chest", choice1: "Open it", choice2: "Check for traps", choice1Destination: 5, choice2Destination: 6),
  /*3*/     Story(title: "You were eaten by tiger", choice1: "End", choice2: "End", choice1Destination: 0, choice2Destination: 0),
  /*4*/     Story(title: "Tiger run away", choice1: "You continued your journey", choice2: "You went back home", choice1Destination: 2, choice2Destination: 8),
  /*5*/     Story(title: "You found treasure", choice1: "Take treasure", choice2: "Take treasure", choice1Destination: 7, choice2Destination: 7),
  /*6*/     Story(title: "There's no traps, only treasure", choice1: "Take treasure", choice2: "Take treasure", choice1Destination: 7, choice2Destination: 7),
  /*7*/     Story(title: "You went back home with tons of gold!", choice1: "Yay", choice2: "Yay", choice1Destination: 0, choice2Destination: 0),
  /*8*/     Story(title: "You went back home with nothing", choice1: "Ok", choice2: "Ok", choice1Destination: 0, choice2Destination: 0)
       ]
       
       var storyNumber = 0
    
    mutating func nextStory(userChoice: String){
        if userChoice == storyArray[storyNumber].choice1 {
            storyNumber = storyArray[storyNumber].choice1Destination
        }
        else if userChoice == storyArray[storyNumber].choice2 {
            storyNumber = storyArray[storyNumber].choice2Destination

        }
    }
    func getTitle() -> String{
        return storyArray[storyNumber].title
    }
    func getChoice1() -> String{
        return storyArray[storyNumber].choice1
    }
    func getChoice2() -> String{
        return storyArray[storyNumber].choice2
    }
    
}


