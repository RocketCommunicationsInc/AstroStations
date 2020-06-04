//
//  StationsMapViewController.swift
//  Astro Mobile
//
//  Created by rocketjeff on 6/4/20.
//  Copyright © 2020 Rocket Communucations Inc. All rights reserved.
//

import UIKit
import MapKit

class StationsMapViewController: UIViewController {

    @IBOutlet var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let span = MKCoordinateSpan(latitudeDelta: 130, longitudeDelta: 130)
        let startingLocation = CLLocationCoordinate2D(latitude: 34.742027, longitude: -120.57244)
        let region = MKCoordinateRegion(center: startingLocation, span: span)
        if( region.center.latitude > -90 && region.center.latitude < 90 && region.center.longitude > -180 && region.center.longitude < 180 ){
            mapView.setRegion(region, animated: true)
        }

        for station in TrackingStations.sharedInstance.stations
        {
            let annotation = MKPointAnnotation()
            annotation.coordinate = station.location
            annotation.title = station.shortName
            annotation.subtitle = station.callsign
            mapView.addAnnotation(annotation)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
