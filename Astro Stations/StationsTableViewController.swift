//
//  StationsTableViewController.swift
//  Astro Stations
//
//  Created by rocketjeff on 5/6/20.
//  Copyright © 2020 Rocket Communucations Inc. All rights reserved.
//

import UIKit

class StationsTableViewController: UITableViewController {

    var detailViewController: StationDetailViewController? = nil
    //var objects = [Any]()


    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: Astro Customization
        self.navigationController?.navigationBar.barTintColor = .astroUIBar
        self.tableView.backgroundColor = .astroUITableCell
        self.tableView.separatorColor = .astroUITableSeparator
        
        // set initial selection
        self.tableView.selectRow(at: IndexPath(row: 0, section: 0), animated: false, scrollPosition: .top)

    }

    override func viewWillAppear(_ animated: Bool) {
        clearsSelectionOnViewWillAppear = splitViewController!.isCollapsed
        super.viewWillAppear(animated)
    }

    @objc
    func insertNewObject(_ sender: Any) {
        /*
        objects.insert(NSDate(), at: 0)
        let indexPath = IndexPath(row: 0, section: 0)
        tableView.insertRows(at: [indexPath], with: .automatic)
 */
    }

    // MARK: - Segues

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let station = TrackingStations.sharedInstance.stations[indexPath.row]
                let controller = (segue.destination as! UINavigationController).topViewController as! StationDetailViewController
                controller.station = station
                controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItemsSupplementBackButton = true
//                controller.navigationItem.title = station.shortName
                detailViewController = controller
            }
        }
    }

    // MARK: - Table View

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TrackingStations.sharedInstance.stations.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! StationTableViewCell
        
        //MARK: Astro Customization
        // Set cell background color
        cell.backgroundColor = .astroUITableCell
        // Set cell label color
        cell.stationNameLabel.textColor = .astroUITableCellLabel
        // Install a view to host the selected cell color
        let selectedBackgroundView = UIView()
        selectedBackgroundView.backgroundColor = .astroUITableSelectedCell
        cell.selectedBackgroundView = selectedBackgroundView

        let station = TrackingStations.sharedInstance.stations[indexPath.row]
        cell.stationNameLabel!.text = station.shortName
        cell.statusView.setAstroStatus(station.status)
        return cell
    }

    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return false
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44

        
    }

    
    @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue)
    {
        
    }
}

