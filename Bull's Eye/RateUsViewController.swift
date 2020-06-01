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
    
    @IBOutlet weak var doneConstraint: NSLayoutConstraint!
    @IBOutlet weak var closeConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        star1.isUserInteractionEnabled = true
        star2.isUserInteractionEnabled = false
        star3.isUserInteractionEnabled = false
        star4.isUserInteractionEnabled = false
        star5.isUserInteractionEnabled = false
        // Do any additional setup after loading the view.
        
        doneConstraint.constant-=view.bounds.width
        closeConstraint.constant-=view.bounds.width
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        self.animateButtons()
    }
    
    //function to animate the buttons
    func animateButtons() {
        UIView.animate(withDuration: 1.5, delay: 0.5, options: .transitionCurlUp, animations: {
            self.doneConstraint.constant+=self.view.bounds.width
        }, completion: nil)
        
        UIView.animate(withDuration: 1, delay: 1.5, options: .curveEaseOut, animations: {
            self.closeConstraint.constant+=self.view.bounds.width
        }, completion: nil)
        
        self.view.layoutIfNeeded()
        
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
       star2.isUserInteractionEnabled = true
    }
    
    @IBAction func star2Tap(_ sender: Any) {
        if star2.isUserInteractionEnabled == true {
           star2.setImage(UIImage(named: "filledStar"), for: .normal)
           star3.isUserInteractionEnabled = true
        }
    }
    
    @IBAction func star3Tap(_ sender: Any) {
        if star3.isUserInteractionEnabled == true {
           star3.setImage(UIImage(named: "filledStar"), for: .normal)
           star4.isUserInteractionEnabled = true
        }
    }
    
    @IBAction func star4Tap(_ sender: Any) {
        if star4.isUserInteractionEnabled == true {
           star4.setImage(UIImage(named: "filledStar"), for: .normal)
           star5.isUserInteractionEnabled = true
        }
    }
    
    @IBAction func star5Tap(_ sender: Any) {
        if star5.isUserInteractionEnabled == true {
           star5.setImage(UIImage(named: "filledStar"), for: .normal)
        }
    }
    
}
