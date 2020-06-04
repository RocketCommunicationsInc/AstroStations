//
//  SettingsViewController.swift
//  Astro Mobile
//
//  Created by rocketjeff on 6/3/20.
//  Copyright © 2020 Rocket Communucations Inc. All rights reserved.
//

import UIKit

class SettingsViewController: UITableViewController {

    @IBOutlet var astroColorsCell: UITableViewCell!
    @IBOutlet var alwaysDarkCell: UITableViewCell!
    @IBOutlet var astroColorsSwitch: UISwitch!
    @IBOutlet var alwaysDarkSwitch: UISwitch!
    @IBOutlet var astroColorsCellLabel: UILabel!
    @IBOutlet var alwaysDarkCellLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        if (appDelegate.useAstroColors)
        {
            //MARK: Astro Customization
            self.navigationController?.navigationBar.barTintColor = .astroUIBar
            self.tableView.backgroundColor = .astroUITableCell
            self.tableView.separatorColor = .astroUITableSeparator
            
            // Set cells' astro colors
            astroColorsCell.backgroundColor = .astroUITableCell
            // Set cell label color
            astroColorsCellLabel.textColor = .astroUITableCellLabel
            // Must install a backgrouhd view to host the selected cell color
            let astroColorsCellSelectedBackgroundView = UIView()
            UIView().backgroundColor = .astroUITableSelectedCell
            astroColorsCell.selectedBackgroundView = astroColorsCellSelectedBackgroundView
            
            alwaysDarkCell.backgroundColor = .astroUITableCell
            // Set cell label color
            alwaysDarkCellLabel.textColor = .astroUITableCellLabel
            // Must install a backgrouhd view to host the selected cell color
            let alwaysDarkCellSelectedBackgroundView = UIView()
            alwaysDarkCellSelectedBackgroundView.backgroundColor = .astroUITableSelectedCell
            alwaysDarkCell.selectedBackgroundView = alwaysDarkCellSelectedBackgroundView
        }

        astroColorsSwitch.isOn = appDelegate.useAstroColors
        alwaysDarkSwitch.isOn = appDelegate.alwaysDark
    }
    
    @IBAction func astroColorsSwitchChanged(_ sender: Any) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.useAstroColors = astroColorsSwitch.isOn
    }
    
    @IBAction func alwaysDarkSwitchChanged(_ sender: Any) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.alwaysDark = alwaysDarkSwitch.isOn
    }
    
    @IBAction func disabledAstroColorsSwitchTapped(_ sender: Any) {
        let alert = UIAlertController(title: "Not Implemented", message: "Maybe Someday", preferredStyle: .alert)
         alert.addAction(UIAlertAction(title: NSLocalizedString("Got It", comment: "Default action"), style: .default, handler: nil))

         self.present(alert, animated: true, completion: nil)

    }
    
}
