//
//  PlaceModel.swift
//  MyPlaces
//
//  Created by Андрей on 06.04.2019.
//  Copyright © 2019 Solo Mid. All rights reserved.
//

import RealmSwift

class Place: Object {
    
    @objc dynamic var name = ""
    @objc dynamic var location: String?
    @objc dynamic var type: String?
    @objc dynamic var imageData: Data?
    var restaraunImage: String?
    
     let restarauntNames = ["Burger King", "KFC", "Golden Cofe", "Paragraph", "BurgerClub", "PitStop", "Amsterdam", "Dominos", "SmilePitzza", "Times Cafe", "La Kave", "Korova" ]
    
    func savePalaces() {
        
        for place in restarauntNames{
        
            let image = UIImage(named: place)
            guard let imageData = image?.pngData() else { return }
            let newPlace = Place()
            newPlace.name = place
            newPlace.location = "Brest"
            newPlace.type = "Bar"
            newPlace.imageData = imageData
            
            StorageManager.saveObject(newPlace) 
        }
    }
}
