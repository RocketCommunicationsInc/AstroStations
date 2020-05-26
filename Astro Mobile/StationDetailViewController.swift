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
        if let detail = station {
            if let label = fullNameLabel {
                label.text = detail.fullName
            }
            if let imageView = imageView {
                imageView.image = detail.getImage()
            }
            if let callsignLabel = callsignLabel {
                callsignLabel.text = detail.callsign
            }
            if let mapView = mapView {
                //mapView.centerCoordinate = detail.location
                let region = MKCoordinateRegion( center: detail.location, latitudinalMeters: CLLocationDistance(exactly: 250000)!, longitudinalMeters: CLLocationDistance(exactly: 250000)!)
                mapView.setRegion(mapView.regionThatFits(region), animated: true)

            }

            //self.navigationItem.title = detail.fullName
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .astroUIBackground
        configureView()
    }


}

