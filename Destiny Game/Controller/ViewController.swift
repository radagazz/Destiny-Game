//
//  ViewController.swift
//  Destiny Game
//
//  Created by anurak teerarattananukulchai on 27/11/2563 BE.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        
        updateUI()
    }
    
    @objc func updateUI() {
        storyLabel.text = storyBrain.getStoryTitle()
        firstButton.setTitle(storyBrain.getChoice1(), for: .normal)
        secondButton.setTitle(storyBrain.getChoice2(), for: .normal)
        
    }
    
}

