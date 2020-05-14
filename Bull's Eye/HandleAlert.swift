//
//  HandleAlert.swift
//  Bull's Eye
//
//  Created by Somya on 15/05/20.
//  Copyright © 2020 Somya. All rights reserved.
//

import Foundation
import UIKit

class HandleAlert {
    
    func dislayAlert() -> RatingPopUpViewController {
        
        let storyboard = UIStoryboard(name: "RatingPopUpStoryboard", bundle: .main)
        let ratingVC = storyboard.instantiateViewController(identifier: "rating") as! RatingPopUpViewController
        return ratingVC
    }
}
