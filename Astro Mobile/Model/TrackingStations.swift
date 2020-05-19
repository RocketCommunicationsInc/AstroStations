//
//  TrackingStations.swift
//  Astro Mobile
//
//  Created by rocketjeff on 5/15/20.
//  Copyright © 2020 Rocket Communucations Inc. All rights reserved.
//

import Foundation
import UIKit
import MapKit


//╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍
//
//╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍
struct TrackingStations
{
    static let sharedInstance = TrackingStations()
    var stations = [TrackingStation]()
    
    init() {
        
        stations.append(TrackingStation(name:"Vandenberg Tracking Station", callsign:"COOK", location: CLLocationCoordinate2D(latitude: 34.742027, longitude: -120.57244)))
        
        stations.append(TrackingStation(name:"Diego Garcia Station", callsign:"REEF", location: CLLocationCoordinate2D(latitude: -7.3195005, longitude: 72.4228556)))

        stations.append(TrackingStation(name:"Hawaii Tracking Station", callsign:"HULA", location: CLLocationCoordinate2D(latitude: 20.9138889, longitude: -157.0594444)))

        stations.append(TrackingStation(name:"New Hampshire Station", callsign:"BOSS", location: CLLocationCoordinate2D(latitude: 42.9761945, longitude: -71.6939626)))

        stations.append(TrackingStation(name:"Telemetry & Command Station RAF Oakhanger", callsign:"LION", location: CLLocationCoordinate2D(latitude: 51.116145, longitude: -0.9063077)))

        stations.append(TrackingStation(name:"Thule Tracking Station", callsign:"POGO", location: CLLocationCoordinate2D(latitude: 77.4670434, longitude: -69.2284827)))
    }
}


