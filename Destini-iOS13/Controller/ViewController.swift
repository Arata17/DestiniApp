//
//  ViewController.swift
//  Destini-iOS13
//
// Created by Shakhaidar Miras
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = storyBrain.getTitle()
        choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.getChoice2(), for: .normal)

    }
    @IBAction func choiceMade(_ sender: UIButton) {
        let userChoice = sender.currentTitle!
        storyBrain.nextStory(userChoice: userChoice)
        updateUI()
    }
    
    func updateUI(){
        storyLabel.text = storyBrain.getTitle()
        choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.getChoice2(), for: .normal)
        
    }
}

