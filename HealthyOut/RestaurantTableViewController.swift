//
//  RestaurantTableViewController.swift
//  HealthyOut
//
//  Created by Chris on 7/10/16.
//  Copyright © 2016 WholeApps. All rights reserved.
//

import UIKit

class RestaurantTableViewController: UITableViewController {
    
    // MARK: Properties
    var restaurants = [Restaurant]()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        loadSampleRestaurants()
    }
    
    func loadSampleRestaurants() {
        let restaurant1 = Restaurant(restaurantName: "New York Pizza Lover", restaurantAddress: "0.8 mi | 2 Florida Ave NE", numDishes: "9 dishes")
        let restaurant2 = Restaurant(restaurantName: "Five Guys Burgers & Fries", restaurantAddress: "0.8 mi | 1300 2nd St NE, Ste A", numDishes: "1 dishes")
        let restaurant3 = Restaurant(restaurantName: "Subway", restaurantAddress: "0.9 mi | 530 Morse St NE", numDishes: "21 dishes")
        let restaurant4 = Restaurant(restaurantName: "Yum's Carry Out", restaurantAddress: "0.9 mi | 416 Florida Ave NE", numDishes: "17 dishes")
        
        restaurants += [restaurant1, restaurant2, restaurant3, restaurant4]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurants.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "RestaurantTableViewCell"
        
        
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! RestaurantTableViewCell

        let restaurant = restaurants[indexPath.row]
        
        cell.restaurantNameLabel.text = restaurant.restaurantName
        cell.restaurantAddressLabel.text = restaurant.restaurantAddress
        cell.numDishesLabel.text = restaurant.numDishes

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
