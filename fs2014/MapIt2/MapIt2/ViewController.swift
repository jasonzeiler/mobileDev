//
//  ViewController.swift
//  MapIt2
//
//  Created by borrower on 11/11/14.
//  Copyright (c) 2014 Jason Zeiler. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var MapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate

        let mapData = appDelegate.getMapData()
        
        //let locationData = appDelegate.getLocationData()
        // Do any additional setup after loading the view, typically from a nib.

        
        var span:MKCoordinateSpan = MKCoordinateSpan(latitudeDelta:mapData.latDelta, longitudeDelta:mapData.lonDelta)
        var location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(mapData.latitude, mapData.longitude)
        var region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        
        MapView.setRegion(region, animated:true)
        MapView.addAnnotations(mapData.places)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
        

}

//Lafarre Hall
//Home of C1212
//38.946117, -92.330186

//Starbucks on South 9th
//Keeps a coder going!
//38.948077, -92.327512

//Mizzou Student Center
//Catch some Zzz's in the basement
//38.942393, -92.326393