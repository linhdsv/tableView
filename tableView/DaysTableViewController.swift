//
//  DaysTableViewController.swift
//  tableView
//
//  Created by Ba Vuong on 8/8/16.
//  Copyright © 2016 DSV. All rights reserved.
//

import Foundation
import UIKit

class DaysTableViewController : UITableViewController{
    
    var monthNumber = -1
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Basic")!
        cell.textLabel?.text = "\(indexPath.row + 1)"
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "DaySegue"){
            let selectedRow = tableView.indexPathForSelectedRow?.row
            
            if let dest = segue.destinationViewController as? SingleDayTableViewController{
                dest.title = "\(selectedRow! + 1)"
                dest.monthNumber = monthNumber
                dest.dayNumber = selectedRow! + 1
            }
        }
    }
}