//
//  ListTableViewController.swift
//  MyApp
//
//  Created by popov-va on 29.06.2023.
//

import UIKit

class ListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        tableView.backgroundColor = .yellow
        tableView.register(Cell.self, forCellReuseIdentifier: Cell.reuseId)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> Cell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cell.reuseId, for: indexPath) as! Cell
        cell.backgroundColor = .yellow
        cell.setupCell()
        cell.titleCell.text = "\(indexPath.row)"
        //cell.descriptionCell.text = "\(indexPath.row)"
    
        return cell
    }
    
    
}
