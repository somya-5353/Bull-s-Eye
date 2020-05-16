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
      star1.setImage(UIImage(named: "filledStar"), for: .normal)
    }
    
    @IBAction func star2Tap(_ sender: Any) {
      star2.setImage(UIImage(named: "filledStar"), for: .normal)
    }
    
    @IBAction func star3Tap(_ sender: Any) {
      star3.setImage(UIImage(named: "filledStar"), for: .normal)
    }
    
    @IBAction func star4Tap(_ sender: Any) {
     star4.setImage(UIImage(named: "filledStar"), for: .normal)
    }
    
    @IBAction func star5Tap(_ sender: Any) {
     star5.setImage(UIImage(named: "filledStar"), for: .normal)
    }
    
}
