//
//  RestaurantResults.swift
//  HealthyOut
//
//  Created by Nuruddin Nasiruddin on 7/12/16.
//  Copyright © 2016 WholeApps. All rights reserved.
//

import UIKit

class RestaurantResults: UITableViewController {

    var dishes = ["Chicken Parmesan", "Alferado Fettucini"]
    var sections = ["Appetizers", "Entrees", "Deserts"]
    var dishDescription = ["Chicken with marinara sauce", "Chicken with our signature white wine sauce"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Search Results"

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return dishes.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("dishCell", forIndexPath: indexPath)

        cell.textLabel?.text = dishes[indexPath.row]
        cell.detailTextLabel?.text = dishDescription[indexPath.row]

        return cell
    }

}
