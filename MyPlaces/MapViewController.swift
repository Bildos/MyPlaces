//
//  MapViewController.swift
//  MyPlaces
//
//  Created by Андрей on 4/20/19.
//  Copyright © 2019 Solo Mid. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func closeVC() {
        dismiss(animated: true)
    }
}
