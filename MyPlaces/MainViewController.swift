//
//  MainViewController.swift
//  MyPlaces
//
//  Created by Андрей on 04.04.2019.
//  Copyright © 2019 Solo Mid. All rights reserved.
//

import UIKit
import RealmSwift

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    var places: Results<Place>!
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        places = realm.objects(Place.self)

    }

    // MARK: - Table view data source
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        print(places.count)
        return places.isEmpty ? 0 : places.count
    }

    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell

        let place = places[indexPath.row]
        cell.nameLabel.text = place.name
        cell.locationLabel.text = place.location
        cell.typeLabel.text = place.type
        cell.imageOfPlaces.image = UIImage(data: place.imageData!)
        cell.imageOfPlaces.layer.cornerRadius = cell.imageOfPlaces.frame.size.height / 2
        cell.imageOfPlaces.clipsToBounds = true
        return cell
    }
    
     func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        let place = places[indexPath.row]
        let deleteActions = UITableViewRowAction(style: .default, title: "Delete") { (_,_) in
            
            StorageManager.deleteObject(place)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
        
        return [deleteActions]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            let place = places[indexPath.row]
            let newPlaceVC = segue.destination as! NewPlaceViewController
            newPlaceVC.currentPlace = place
            
        }
    }
    
    @IBAction func unwinSegue(_ segue: UIStoryboardSegue){
        
        guard let newPlaceVC = segue.source as? NewPlaceViewController else {return}
        newPlaceVC.savePlace()
        tableView.reloadData()
    }
}
