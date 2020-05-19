//
//  DetailViewController.swift
//  Astro Mobile
//
//  Created by rocketjeff on 5/6/20.
//  Copyright © 2020 Rocket Communucations Inc. All rights reserved.
//

import UIKit

class StationDetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!
    
    var station: TrackingStation? {
        didSet {
            // Update the view.
            configureView()
        }
    }


    func configureView() {
        // Update the user interface for the detail item.
        if let detail = station {
            if let label = detailDescriptionLabel {
                label.text = detail.fullName
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureView()
    }


}

