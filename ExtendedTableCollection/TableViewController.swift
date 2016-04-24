//
//  FirstViewController.swift
//  ExtendedTableCollection
//
//  Created by Basem Emara on 4/23/16.
//  Copyright © 2016 Zamzam Inc. All rights reserved.
//

import UIKit
import ExtendedTableCollection_iOS

class TableViewController: UITableViewController, DataControllable {

    let cellNibName = "TableViewCell"
    let service: Serviceable = PostService()
    var models: [Contentable] = []
    
    var dataView: DataViewable {
        return tableView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        didLoad(self as DataControllable)
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView[indexPath] as! TableViewCell
        let model = models[indexPath.row]
        return cell.bind(model)
    }

}