//
//  TableViewController.swift
//  NavStuff
//
//  Created by James Campagno on 6/16/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    let reuseIdentifier = "dirtyCell"
    var dirtyDancingSoundtrack: [String] = []
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        generateTheDirtyDancingSoundtrack()
        
    }
    
    func generateTheDirtyDancingSoundtrack() {
        
        dirtyDancingSoundtrack = [
            "(I've Had) The Time of My Life",
            "Be My Baby",
            "She's Like The Wind",
            "Hungry Eyes",
            "STAY",
            "Yes",
            "You Don't Own Me",
            "Hey Baby",
            "Overload",
            "Love Is Strange",
            "Where Are You Tonight?",
            "In the Still of the Night"
        ]
        
    }
    
    
    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
        
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return dirtyDancingSoundtrack.count
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(reuseIdentifier, forIndexPath: indexPath)
        
        let songTitle = dirtyDancingSoundtrack[indexPath.row]
        
        cell.textLabel?.text = songTitle

        return cell
    }
 

}