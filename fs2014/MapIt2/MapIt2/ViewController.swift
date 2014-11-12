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
        
        
        // Do any additional setup after loading the view, typically from a nib.

        
        var span:MKCoordinateSpan = MKCoordinateSpan(latitudeDelta:mapData.latDelta, longitudeDelta:mapData.lonDelta)
        var location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(mapData.latitude, mapData.longitude)
        var region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        
        MapView.setRegion(region, animated:true)
        
        
        
        var mapAnnotation = MKPointAnnotation()
        mapAnnotation.coordinate = location
        mapAnnotation.title = "Capen Park Area"
        mapAnnotation.subtitle = "Rock Climbing!"
        MapView.addAnnotation(mapAnnotation)
        
        for [] in locationArray{
            mapAnnotation.coordinate = locationArray.MapData.
            mapAnnotation.title = locationArray.title
            mapAnnotation.subtitle = locationArray.subtitle
            
        }

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

