//
//  ViewController.swift
//  MapIt
//
//  Created by Dale Musser on 11/11/14.
//  Copyright (c) 2014 Dale Musser. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var latitude:CLLocationDegrees = 38.927246
        var longitude:CLLocationDegrees = -92.315984
        var latDelta:CLLocationDegrees = 0.03
        var lonDelta:CLLocationDegrees = 0.03
        
        var span:MKCoordinateSpan = MKCoordinateSpan(latitudeDelta:latDelta, longitudeDelta:lonDelta)
        var location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        var region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        
        mapView.setRegion(region, animated:true)

        var mapAnnotation = MKPointAnnotation()
        mapAnnotation.coordinate = location
        mapAnnotation.title = "Capen Park Area"
        mapAnnotation.subtitle = "Rock Climbing!"
        mapView.addAnnotation(mapAnnotation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

/* 
  To be used in class:

        let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate

*/

