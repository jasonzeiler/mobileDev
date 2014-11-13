//
//  mapData.swift
//  MapIt2
//
//  Created by borrower on 11/11/14.
//  Copyright (c) 2014 Jason Zeiler. All rights reserved.
//

import UIKit
import MapKit

class MapData: NSObject {
   //area map will be centered around
    var latitude:CLLocationDegrees = 38.944861  //38.927246
    var longitude:CLLocationDegrees = -92.329286 //-92.315984
   //zoom level of map
    var latDelta:CLLocationDegrees = 0.01
    var lonDelta:CLLocationDegrees = 0.01
    
}

//var locationArray[MapData, String, String]



class PointsOfInterest {
    
    
    var poiLat:Double
    var poiLon:Double
    var title:String
    var subtitle:String
    init (title: String, subtitle: String, poiLat:Double , poiLon:Double ){
        self.title = title
        self.subtitle = subtitle
        self.poiLat = poiLat
        self.poiLon = poiLon
    }
}

/*
class pointToBeAnnotated: <#super class#> {
    <#properties and methods#>
}*/
//38.944861, -92.329286



//Lafarre Hall
//Home of C1212
//38.946117, -92.330186

//Starbucks on South 9th
//Keeps a coder going!
//38.948077, -92.327512

//Mizzou Student Center
//Catch some Zzz's in the basement
//38.942393, -92.326393