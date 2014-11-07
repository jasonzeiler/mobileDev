//
//  NumbersViewController.swift
//  TableView
//
//  Created by Jason Zeiler on 11/3/14.
//  Copyright (c) 2014 Jason Zeiler. All rights reserved.
//

import UIKit

class NumbersViewController: UITableViewController {

    var numbers = ["One","Two","Three","Four","Five"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = UIColor.blueColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section.
        return numbers.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel.text = numbers[indexPath.row]
        return cell
    }
    
}
