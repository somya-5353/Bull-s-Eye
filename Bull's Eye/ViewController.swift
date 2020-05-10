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
    
    var currentValueOfSlider: Int = 0
    var targetScore: Int = 0
    var currentRound: Int = 1
    var totalScore: Int = 0
    
    override func viewDidLoad() {
       super.viewDidLoad()
        let sliderValue = slider.value.rounded()
        // Do any additional setup after loading the view.
        self.currentValueOfSlider = Int(sliderValue)
        self.startNextRound()
    }
    
   //showing the alert dialog box on tapping hit me button
    @IBAction func showAlert(_ sender: Any) {
        
        let message = "Your slider is now at: \(self.currentValueOfSlider)\nYour target was: \(self.targetScore)"
        let alertBox = UIAlertController(title: "Hit Me!", message: message, preferredStyle: .alert)
        alertBox.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alertBox, animated: true)
        self.startNextRound()
        
    }
    
    @IBAction func startOver(_ sender: Any) {
    }
    
    @IBAction func getInfo(_ sender: Any) {
    }
    
    @IBAction func getSliderValue(_ sender: UISlider) {
        self.currentValueOfSlider = Int(sender.value.rounded())
    }
    
    //restarting the next round of game
    func startNextRound() {
        
        self.targetScore = Int.random(in: 1...100)
        self.currentValueOfSlider = 50
        self.targetLabel.text = String(self.targetScore)
        self.currentRound = self.currentRound + 1
        self.roundValue.text = String(self.currentRound)
        
        
        
        
    }
    
}

