//
//  ViewController.swift
//  button_action in cell
//
//  Created by Karthiga on 14/03/24.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {
    
    
@IBOutlet weak var table: UITableView!
    
    var touch = ["Hi","Hello","Hai","good","today"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.register(newTableViewCell.nib(), forCellReuseIdentifier: newTableViewCell.identifier)
        table.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return touch.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: newTableViewCell.identifier, for: indexPath) as! newTableViewCell
        cell.configure(with:touch[indexPath.row])
        cell.delegate = self
        return cell
    }

}
extension ViewController : newTableViewCellDelegate{
    func DidTapButton(with title: String) {
        print("\(title)")
    }
    
    
    
}
