//
//  AnotherXibViewController.swift
//  FunTouch
//
//  Created by Дмитрий Тимаров on 15.06.2023.
//

import UIKit

class AnotherXibViewController: UITableViewController {
    
    @IBOutlet weak var tableView1: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView1.delegate = self
        
        
        }
    
}



