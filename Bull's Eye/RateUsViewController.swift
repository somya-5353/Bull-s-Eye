//
//  RateUsViewController.swift
//  Bull's Eye
//
//  Created by Somya on 13/05/20.
//  Copyright © 2020 Somya. All rights reserved.
//

import UIKit

class RateUsViewController: UIViewController {
    
    @IBOutlet weak var star1: UIButton!
    @IBOutlet weak var star4: UIButton!
    @IBOutlet weak var star3: UIButton!
    @IBOutlet weak var star2: UIButton!
    @IBOutlet weak var star5: UIButton!
    
    var tap1 = true
    var tap2 = true
    var tap3 = true
    var tap4 = true
    var tap5 = true
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func close(_ sender: Any) {
        
    dismiss(animated: true, completion: nil)
    }
    
     let handleAlert = HandleAlert()
    
    @IBAction func doneWithRatings(_ sender: Any) {
        
        let ratingVC = handleAlert.displayAlert()
        present(ratingVC, animated: true)
    }
    
    @IBAction func star1Tap(_ sender: Any) {
        if self.tap1 == true {
           star1.setImage(UIImage(named: "filledStar"), for: .normal)
        } else {
           star1.setImage(UIImage(named: "emptyStar"), for: .normal)
        }
        self.tap1 = !self.tap1
    }
    
    @IBAction func star2Tap(_ sender: Any) {
      if self.tap2 == true {
         star2.setImage(UIImage(named: "filledStar"), for: .normal)
      } else {
         star2.setImage(UIImage(named: "emptyStar"), for: .normal)
      }
      self.tap2 = !self.tap2
    }
    
    @IBAction func star3Tap(_ sender: Any) {
      if self.tap3 == true {
         star3.setImage(UIImage(named: "filledStar"), for: .normal)
      } else {
         star3.setImage(UIImage(named: "emptyStar"), for: .normal)
      }
      self.tap3 = !self.tap3
    }
    
    @IBAction func star4Tap(_ sender: Any) {
     if self.tap4 == true {
        star4.setImage(UIImage(named: "filledStar"), for: .normal)
     } else {
        star4.setImage(UIImage(named: "emptyStar"), for: .normal)
     }
     self.tap4 = !self.tap4
    }
    
    @IBAction func star5Tap(_ sender: Any) {
     if self.tap5 == true {
        star5.setImage(UIImage(named: "filledStar"), for: .normal)
     } else {
        star5.setImage(UIImage(named: "emptyStar"), for: .normal)
     }
    self.tap5 = !self.tap5
    }
    
}
