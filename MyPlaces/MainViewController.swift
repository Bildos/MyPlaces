//
//  MainViewController.swift
//  MyPlaces
//
//  Created by Андрей on 04.04.2019.
//  Copyright © 2019 Solo Mid. All rights reserved.
//

import UIKit

class MainViewController: UITableViewController {
    
let restarauntNames = ["Burger King", "KFC", "Golden Cofe", "Paragraph", "BurgerClub", "PitStop", "Amsterdam", "Dominos", "SmilePitzza", "Times Cafe", "La Kave", "Korova" ]

    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return restarauntNames.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell

        cell.nameLabel.text = restarauntNames[indexPath.row]
        cell.imageOfPlaces.image = UIImage(named: restarauntNames[indexPath.row])
        cell.imageOfPlaces.layer.cornerRadius = cell.imageOfPlaces.frame.size.height / 2
        cell.imageOfPlaces.clipsToBounds = true
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
