//
//  DetailViewController.swift
//  Astro Mobile
//
//  Created by rocketjeff on 5/6/20.
//  Copyright © 2020 Rocket Communucations Inc. All rights reserved.
//

import UIKit
import MapKit
import AstroSwiftFoundation

class StationDetailViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet var callsignLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var mapView: MKMapView!
    @IBOutlet weak var outerVisualEffect: UIVisualEffectView!
    
    var station: TrackingStation? {
        didSet {
            // Update the view.
            configureView()
        }
    }


    func configureView() {
        // if no station is set, set the first one as a default
        if (station == nil)
        {
            station = TrackingStations.sharedInstance.stations.first
        }
        
        // Update the user interface for the detail item.
        if let theStation = station {
            if let label = fullNameLabel {
                label.text = theStation.fullName
            }
            if let imageView = imageView {
                imageView.image = theStation.getImage()
            }
            if let callsignLabel = callsignLabel {
                callsignLabel.text = theStation.callsign
            }
            if let mapView = mapView {
                let region = MKCoordinateRegion( center: theStation.location, latitudinalMeters: CLLocationDistance(exactly: 250000)!, longitudinalMeters: CLLocationDistance(exactly: 250000)!)
                mapView.setRegion(mapView.regionThatFits(region), animated: true)
                
                let annotation = StationAnnotation(station:theStation)
                annotation.coordinate = theStation.location
                annotation.title = theStation.shortName
                //annotation.subtitle = theStation.callsign
                mapView.addAnnotation(annotation)
            }

            //self.navigationItem.title = detail.fullName
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        outerVisualEffect.layer.cornerRadius = 10
        outerVisualEffect.clipsToBounds = true

        //MARK: Astro Customization
        self.navigationController?.navigationBar.barTintColor = .astroUIBar
        self.view.backgroundColor = .astroUIBackground
        
        configureView()
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

