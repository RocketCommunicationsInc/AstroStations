//
//  SettingsViewController.swift
//  Astro Stations
//
//  Created by rocketjeff on 6/3/20.
//  Copyright © 2020 Rocket Communucations Inc. All rights reserved.
//

import UIKit
import AstroSwiftFoundation

class SettingsViewController: UITableViewController {

    @IBOutlet var alwaysDarkCell: UITableViewCell!
    @IBOutlet var alwaysDarkSwitch: UISwitch!
    @IBOutlet var alwaysDarkCellLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
            //MARK: Astro Customization
        self.tableView.backgroundColor = .astroUIBackground
            
            alwaysDarkCell.backgroundColor = .astroUIBackground
            // Set cell label color
        alwaysDarkCellLabel.textColor = .label
//            // Must install a background view to host the selected cell color
//            let alwaysDarkCellSelectedBackgroundView = UIView()
//            alwaysDarkCellSelectedBackgroundView.backgroundColor = .astroUIBackground
//            alwaysDarkCell.selectedBackgroundView = alwaysDarkCellSelectedBackgroundView

        alwaysDarkSwitch.isOn = appDelegate.alwaysDark
    }
    

    
    @IBAction func alwaysDarkSwitchChanged(_ sender: Any) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.alwaysDark = alwaysDarkSwitch.isOn
    }
    

    
}
