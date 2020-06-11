//
//  StationTableViewCell.swift
//  Astro Mobile
//
//  Created by rocketjeff on 5/29/20.
//  Copyright © 2020 Rocket Communucations Inc. All rights reserved.
//

import UIKit

class StationTableViewCell: UITableViewCell {

    @IBOutlet var stationNameLabel: UILabel!
    @IBOutlet var statusView: StatusView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code        
//        let appDelegate = UIApplication.shared.delegate as! AppDelegate
//        if (!appDelegate.useAstroColors)
//        {
//            statusView.isHidden = true
//        }

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
