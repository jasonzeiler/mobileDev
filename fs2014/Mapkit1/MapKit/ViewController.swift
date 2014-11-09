//
//  ViewController.swift
//  MapKit
//
//  Created by borrower on 11/4/14.
//  Copyright (c) 2014 Jason Zeiler. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var latitude:CLLocationDegrees = 38.927246
        var longitude:CLLocationDegrees = -92.315984
        var latDelta:CLLocationDegrees = 0.03
        var lonDelta:CLLocationDegrees = 0.03
        
        var span:MKCoordinateSpan = MKCoordinateSpan(latitudeDelta:latDelta, longitudeDelta:lonDelta)
        var location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        
        var region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        
        mapView.setRegion(region, animated:true)
        
        let annotation = MKPointAnnotation()
        annotation.setCoordinate(location)
        annotation.title = "Grindstone Nature Area"
        annotation.subtitle = "What a Fun Place!!"
        mapView.addAnnotation(annotation)
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

