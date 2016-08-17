//
//  EventViewController.swift
//  tableView
//
//  Created by Ba Vuong on 8/8/16.
//  Copyright © 2016 DSV. All rights reserved.
//

import Foundation
import UIKit

class EventViewController : UIViewController{
    var ce = CalendarEvent(withTitle: "", andDateString: "")
    @IBOutlet weak var titleLabel : UILabel?
    @IBOutlet weak var dateStringLabel : UILabel?

    override func viewDidLoad() {
        titleLabel!.text = ce.title
        dateStringLabel!.text = ce.dateString
    }
    
}