//
//  AnotherXibViewController.swift
//  FunTouch
//
//  Created by Дмитрий Тимаров on 16.06.2023.
//

import UIKit

class AnotherXibViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UINib(nibName: String(describing: CustomTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: CustomTableViewCell.self))
        // Do any additional setup after loading the view.
    }



}
extension AnotherXibViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let  cell = tableView.dequeueReusableCell(withIdentifier: String(describing: CustomTableViewCell.self)) as! CustomTableViewCell
        
        cell.configure(for: ViewModel(imageURL: "", title: "Строчка \(indexPath.row)", subtitle: "Секція \(indexPath.row)"))
        
        return cell
        
    }
    
    
}
