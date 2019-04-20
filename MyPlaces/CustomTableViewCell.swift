//
//  CustomTableViewCell.swift
//  MyPlaces
//
//  Created by Андрей on 06.04.2019.
//  Copyright © 2019 Solo Mid. All rights reserved.
//

import UIKit
import Cosmos

class CustomTableViewCell: UITableViewCell {

   
    @IBOutlet weak var imageOfPlaces: UIImageView!{
        didSet {
            imageOfPlaces.layer.cornerRadius = imageOfPlaces.frame.size.height / 2
            imageOfPlaces.clipsToBounds = true
        }
    }
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var cosmosView: CosmosView!{
        didSet {
            cosmosView.settings.updateOnTouch = false
            cosmosView.settings.fillMode = .half
        }
    }
    
}
