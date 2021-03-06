//
//  TrackingStations.swift
//  Astro Stations
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
        
        stations.append(TrackingStation(fullName:"Vandenberg Tracking Station", shortName:"Vandenberg", callsign:"COOK", location: CLLocationCoordinate2D(latitude: 34.742027, longitude: -120.57244)))
        
        stations.append(TrackingStation(fullName:"Diego Garcia Station", shortName:"Diego Garcia", callsign:"REEF", location: CLLocationCoordinate2D(latitude: -7.3195005, longitude: 72.4228556)))

        stations.append(TrackingStation(fullName:"Hawaii Tracking Station", shortName:"Hawaii", callsign:"HULA", location: CLLocationCoordinate2D(latitude: 21.561389, longitude: -158.239222)))

        stations.append(TrackingStation(fullName:"New Hampshire Station", shortName:"New Hampshire", callsign:"BOSS", location: CLLocationCoordinate2D(latitude: 42.9761945, longitude: -71.6939626)))

        stations.append(TrackingStation(fullName:"Telemetry & Command Station RAF Oakhanger", shortName:"RAF Oakhanger", callsign:"LION", location: CLLocationCoordinate2D(latitude: 51.116145, longitude: -0.9063077)))

        stations.append(TrackingStation(fullName:"Thule Tracking Station", shortName:"Thule", callsign:"POGO", location: CLLocationCoordinate2D(latitude: 77.4670434, longitude: -69.2284827)))
    }
}


