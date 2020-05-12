//
//  AboutUsViewController.swift
//  Bull's Eye
//
//  Created by Somya on 12/05/20.
//  Copyright © 2020 Somya. All rights reserved.
//

import UIKit

class AboutUsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func closeAboutUs(_ sender: Any) {
        
        //added to dismiss the view controller
        dismiss(animated: true, completion: nil)
    }
   

}
