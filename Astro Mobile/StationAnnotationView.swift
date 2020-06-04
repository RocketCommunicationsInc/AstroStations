//
//  StationAnnotationView.swift
//  Astro Mobile
//
//  Created by rocketjeff on 6/4/20.
//  Copyright © 2020 Rocket Communucations Inc. All rights reserved.
//

import UIKit
import MapKit

class StationAnnotationView: MKAnnotationView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    var trackingStation:TrackingStation?
    
    override init(annotation: MKAnnotation?, reuseIdentifier: String?) {
        super.init(annotation: annotation, reuseIdentifier: reuseIdentifier)

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
