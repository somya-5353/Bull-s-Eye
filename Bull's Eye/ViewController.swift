//
//  ViewController.swift
//  Bull's Eye
//
//  Created by Somya on 05/05/20.
//  Copyright © 2020 Somya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var slider1Label: UILabel!
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var scoreTitle: UILabel!
    @IBOutlet weak var slider2Label: UILabel!
    @IBOutlet weak var scoreValue: UILabel!
    @IBOutlet weak var roundTitle: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var roundValue: UILabel!
    
    @IBOutlet weak var hitMeConstraint: NSLayoutConstraint!
    
    var currentValueOfSlider: Int = 0
    var targetScore: Int = 0
    var currentRound: Int = 0
    var totalScore: Int = 0
    var currentScore: Int = 0
    
    override func viewDidLoad() {
       super.viewDidLoad()
        let sliderValue = slider.value.rounded()
        // Do any additional setup after loading the view.
        self.currentValueOfSlider = Int(sliderValue)
        self.scoreValue.text = "0"
        self.startNextRound()
        self.styleSlider()
        self.hitMeConstraint.constant-=view.bounds.width
        
    }
    
    //style slider
    func styleSlider() {
        
        let imageNormal = #imageLiteral(resourceName: "SliderThumb-Normal")
        slider.setThumbImage(imageNormal, for: .normal)
        
        let imageHighlighted = #imageLiteral(resourceName: "SliderThumb-Highlighted")
        slider.setThumbImage(imageHighlighted, for: .highlighted)
        
        let insets = UIEdgeInsets(top: 0, left: 14, bottom: 0, right: 14)
        
        let trackerMinimumImage = #imageLiteral(resourceName: "slider")
        let resizableImageMin = trackerMinimumImage.resizableImage(withCapInsets: insets)
        slider.setMinimumTrackImage(resizableImageMin, for: .normal)
        
       let trackerMaximumImage = #imageLiteral(resourceName: "SliderTrackRight")
       let resizableImageMax = trackerMaximumImage.resizableImage(withCapInsets: insets)
       slider.setMaximumTrackImage(resizableImageMax, for: .normal)
    }
    
    
   //showing the alert dialog box on tapping hit me button
    @IBAction func showAlert(_ sender: Any) {
        
        self.calculateScore()
        let message = "You scored \(self.currentScore) points."
        let title = self.setTitleForAlert()
        let alertBox = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertBox.addAction(UIAlertAction(title: "OK", style: .default, handler: {
            action in
            self.startNextRound()
        }))
        self.present(alertBox, animated: true)
        
    }
    
    //when player presses the start over button
    @IBAction func startOver(_ sender: Any) {
        
        self.currentRound = 0
        self.totalScore = 0
        self.scoreValue.text = "0"
        self.slider.value = 50
        self.startNextRound()
    }
    
    @IBAction func getInfo(_ sender: Any) {
    }
    
    @IBAction func getSliderValue(_ sender: UISlider) {
        self.currentValueOfSlider = Int(sender.value.rounded())
    }
    
    //restarting the next round of game
    func startNextRound() {
        
        self.targetScore = Int.random(in: 1...100)
        self.slider.value = 50
        let sliderValue = slider.value.rounded()
        self.currentValueOfSlider = Int(sliderValue)
        self.targetLabel.text = String(self.targetScore)
        self.currentRound = self.currentRound + 1
        self.roundValue.text = String(self.currentRound)
    }
    
    //calculating the total score
    func calculateScore() {
        
        self.currentScore = 100 - abs(self.currentValueOfSlider - self.targetScore)
        self.totalScore += self.currentScore
        self.scoreValue.text = String(self.totalScore)
    }
    
    //setting the title for alert box based on player's performance
    func setTitleForAlert() -> String {
        
        var titleForAlert = ""
        if  (100 - self.currentScore) == 0 {
           titleForAlert = "Perfect!"
        } else if (100 - self.currentScore) < 5 {
            titleForAlert = "Great, You were almost there!"
        } else if (100 - self.currentScore) < 10 {
            titleForAlert = "Good Job!"
        } else {
            titleForAlert = "You missed it!"
        }
        return titleForAlert
    }
}

