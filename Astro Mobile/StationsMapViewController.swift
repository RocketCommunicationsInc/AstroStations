//
//  StationsMapViewController.swift
//  Astro Mobile
//
//  Created by rocketjeff on 6/4/20.
//  Copyright © 2020 Rocket Communucations Inc. All rights reserved.
//

import UIKit
import MapKit

class StationsMapViewController: UIViewController,MKMapViewDelegate {

    @IBOutlet var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let span = MKCoordinateSpan(latitudeDelta: 80, longitudeDelta: 80)
        let startingLocation = CLLocationCoordinate2D(latitude: 34.742027, longitude: -120.57244)
        let region = MKCoordinateRegion(center: startingLocation, span: span)
        if( region.center.latitude > -90 && region.center.latitude < 90 && region.center.longitude > -180 && region.center.longitude < 180 ){
            mapView.setRegion(region, animated: true)
        }

        for station in TrackingStations.sharedInstance.stations
        {
            let annotation = StationAnnotation(station: station)
            annotation.coordinate = station.location
            annotation.title = station.shortName
         //   annotation.subtitle = station.callsign
            annotation.station = station
            mapView.addAnnotation(annotation)
        }
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        
        if annotation is MKUserLocation {
            return nil
        }
        
        let stationAnnotation = annotation as! StationAnnotation
        let view = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: "pin")
        let stationStatus = stationAnnotation.station?.status ?? AstroStatus.Off
        view.markerTintColor = UIColor.colorForAstroStatus(stationStatus)
        view.glyphImage = UIImage(named: "antenna.transmit.filled")
        return view
    }
    


}
