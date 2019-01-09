//
//  TodoListViewController.swift
//  Todoey
//
//  Created by Matthew Tripodi on 1/5/19.
//  Copyright © 2019 Matthew Tripodi. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {
    
    let itemArray = ["Find Mike", "Buy Eggos", "Destory Demogorogn"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //MARK - Tableview Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    //MARK - TableView Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(itemArray[indexPath.row])
        
        // Add a checkmark when a row is selected or if a row already contains a checkmark delete the check when the row is selected6
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }
        else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        // When a row is selected in the TableView it will not stay highlighted grey in will flash grey quickly and then go back to normal 
        tableView.deselectRow(at: indexPath, animated: true)
        
        
    }


}

