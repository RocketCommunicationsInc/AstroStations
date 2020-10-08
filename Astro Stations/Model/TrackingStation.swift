//
//  TrackingStation.swift
//  Astro Mobile
//
//  Created by rocketjeff on 5/15/20.
//  Copyright © 2020 Rocket Communucations Inc. All rights reserved.
//

import Foundation
import UIKit
import MapKit
import AstroSwiftFoundation

//╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍
//
//╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍
struct TrackingStation
{
    var fullName:String = ""
    var shortName:String = ""
    var callsign:String = ""
    var location:CLLocationCoordinate2D = CLLocationCoordinate2D()
    var status = AstroStatus.Off
    
    
    init(fullName:String, shortName:String, callsign:String, location:CLLocationCoordinate2D) {
        self.fullName = fullName
        self.shortName = shortName
        self.callsign = callsign
        self.location = location
        self.status = AstroStatus.randomStatus()
    }

    func getImage()->UIImage
    {
        let imageName = callsign + ".jpg"
        return UIImage(named: imageName)!
    }
}
