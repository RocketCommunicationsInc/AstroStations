//
//  StationAnnotation.swift
//  Astro Stations
//
//  Created by rocketjeff on 6/11/20.
//  Copyright © 2020 Rocket Communucations Inc. All rights reserved.
//

import UIKit
import MapKit

class StationAnnotation: NSObject, MKAnnotation {
    // This property must be key-value observable, which the `@objc dynamic` attributes provide.
    @objc dynamic var coordinate:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 0, longitude: 0)
    
    // Required if you set the annotation view's `canShowCallout` property to `true`
    var title: String? = "Station"
    
    // Note the TrackingStation that is represented
    var station: TrackingStation? = nil

    init(station:TrackingStation) {
        super.init()
        self.station = station
       }
}
