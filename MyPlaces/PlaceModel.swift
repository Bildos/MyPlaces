//
//  PlaceModel.swift
//  MyPlaces
//
//  Created by Андрей on 06.04.2019.
//  Copyright © 2019 Solo Mid. All rights reserved.
//

import UIKit

struct Place {
    
    var name: String
    var location: String?
    var type: String?
    var image: UIImage?
    var restaraunImage: String?
    
    static let restarauntNames = ["Burger King", "KFC", "Golden Cofe", "Paragraph", "BurgerClub", "PitStop", "Amsterdam", "Dominos", "SmilePitzza", "Times Cafe", "La Kave", "Korova" ]
    
    static func getPlaces() -> [Place] {
        
        var places = [Place]()
        
        for place in restarauntNames{
            
            places.append(Place(name: place, location: "Brest", type: "Restaran",image: nil, restaraunImage: place))
        }
        
        return places
    }
}
