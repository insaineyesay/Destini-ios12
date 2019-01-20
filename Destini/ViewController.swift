//
//  ViewController.swift
//  Destini
//
//  Created by Philipp Muellauer on 01/09/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Our strings
    let story1 = Story(
        story: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: \"Need a ride, boy?\".",
        answer1: "I\'ll hop in. Thanks for the help!",
        answer1Path: 3,
        answer2: "Better ask him if he\'s a murderer first.",
        answer2Path: 2
    )
    
    let story2 = Story(
        story: "He nods slowly, unphased by the question.",
        answer1: "At least he\'s honest. I\'ll climb in.",
        answer1Path: 3,
        answer2: "Wait, I know how to change a tire.",
        answer2Path: 4)
    
    let story3 = Story(
        story: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
        answer1: "I love Elton John! Hand him the cassette tape.",
        answer1Path: 6,
        answer2: "It\'s him or me! You take the knife and stab him.",
        answer2Path: 5)
    
    let story4 = Story(
        story: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?",
        answer1: "",
        answer1Path: 0,
        answer2: "",
        answer2Path: 0)
    
    let story5 = Story(
        story: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.",
        answer1: "",
        answer1Path: 0,
        answer2: "",
        answer2Path: 0)
    
    let story6 = Story(
        story: "You bond with the murderer while crooning verses of \"Can you feel the love tonight\". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: \"Try the pier.\"",
        answer1: "",
        answer1Path: 0,
        answer2: "",
        answer2Path: 0)
    
    
    // UI Elements linked to the storyboard
    @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    @IBOutlet weak var storyTextView: UILabel!
    
    // TODO Step 5: Initialise instance variables here
    var storyPath: Int = 0
    var storyPathArray: [Story] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyPathArray.append(contentsOf: [story1, story2, story3, story4, story5, story6])
        
        // TODO Step 3: Set the text for the storyTextView, topButton, bottomButton, and to T1_Story, T1_Ans1, and T1_Ans2
        storyTextView.text = story1.story
        // https://developer.apple.com/documentation/uikit/uicontrol/state
        topButton.setTitle(story1.answer1, for: .normal)
        bottomButton.setTitle(story1.answer2, for: .normal)
    }
    
    func endGame() {
        ProgressHUD.showSuccess("EndGame!")
    }
    
    
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {

        // TODO Step 4: Write an IF-Statement to update the views
        if (sender.tag == 1) {
            storyPath = storyPathArray[storyPath].answer1Path!
            storyTextView.text = storyPathArray[storyPath].story
            topButton.setTitle(storyPathArray[storyPath].answer1, for: .normal)
            bottomButton.setTitle(storyPathArray[storyPath].answer2, for: .normal)
        }
            
            // TODO Step 6: Modify the IF-Statement to complete the story
        else {
            storyPath = storyPathArray[storyPath].answer2Path!
            storyTextView.text = storyPathArray[storyPath].story
            topButton.setTitle(storyPathArray[storyPath].answer1, for: .normal)
            bottomButton.setTitle(storyPathArray[storyPath].answer2, for: .normal)
        }
        
    }
}

