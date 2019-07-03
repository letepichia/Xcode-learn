//
//  Player.swift
//  Storyboard
//
//  Created by Eduardo Letepichia on 7/1/19.
//  Copyright © 2019 Eduardo Letepichia. All rights reserved.
//

import UIKit

struct Player {
    
    // MARK: - Properties
    var name: String?
    var game: String?
    var rating: Int

    func playerImage() -> UIImage? {
        let imageName = "\(self.rating)Stars"
        return UIImage(named: imageName)
    }

}
