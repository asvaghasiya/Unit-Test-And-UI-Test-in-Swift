//
//  ListViewController.swift
//  UI_Testing
//
//  Created by Artoon Solutions on 11/10/19.
//  Copyright © 2019 Artoon Solutions. All rights reserved.
//

import UIKit

class ListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var table: UITableView!
    
    var numberOfRows = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.accessibilityIdentifier = "myUniqueTableViewIdentifier"
    }
    
    @IBAction func onRefresh(_ sender: Any) {
        numberOfRows = 30
        self.table.reloadData()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberOfRows;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "This is row number \(indexPath.row+1)"
        cell.accessibilityIdentifier = "myCell_\(indexPath.row)"
        return cell;
    }
    
}
