//
//  AboutUsViewController.swift
//  Bull's Eye
//
//  Created by Somya on 12/05/20.
//  Copyright © 2020 Somya. All rights reserved.
//

import UIKit

class AboutUsViewController: UIViewController {
    @IBOutlet weak var aboutUs: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        aboutUs.text = "\t\t\tWelcome to the awesome game of Bull's Eye.\n\nYou can win points by dragging the slider as close to the target as you can. The closer your guess is, the more points you win.!!\n\n\t\t\t\t\t\t\t\t\tGet started now !"

        // Do any additional setup after loading the view.
    }
    
 
    @IBAction func closeAboutUs(_ sender: Any) {
        
        //added to dismiss the view controller
        dismiss(animated: true, completion: nil)
    }
   
    let handleAlert = HandleAlert()

    @IBAction func openRateUs(_ sender: Any) {
        
    }
}
