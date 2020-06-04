//
//  DetailViewController.swift
//  Astro Mobile
//
//  Created by rocketjeff on 5/6/20.
//  Copyright © 2020 Rocket Communucations Inc. All rights reserved.
//

import UIKit
import MapKit

class StationDetailViewController: UIViewController {

    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet var callsignLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var mapView: MKMapView!
    
    var station: TrackingStation? {
        didSet {
            // Update the view.
            configureView()
        }
    }


    func configureView() {
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
                
                let annotation = MKPointAnnotation()
                annotation.coordinate = theStation.location
                annotation.title = theStation.shortName
                annotation.subtitle = theStation.callsign
                mapView.addAnnotation(annotation)
            }

            //self.navigationItem.title = detail.fullName
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        if (appDelegate.useAstroColors)
        {
            //MARK: Astro Customization
            self.navigationController?.navigationBar.barTintColor = .astroUIBar
            self.view.backgroundColor = .astroUIBackground
        }
        else
        {
            self.view.backgroundColor = .systemBackground
        }
        configureView()
    }


}

