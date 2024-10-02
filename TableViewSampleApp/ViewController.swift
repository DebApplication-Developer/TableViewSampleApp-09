//
//  ViewController.swift
//  TableViewSampleApp
//
//  Created by CoderPath on 02/10/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var Item = ["1","2","3"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Item.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

                // Configure the cell
                cell.textLabel?.text = Item[indexPath.row]

                return cell
    }
    

   
    @IBOutlet weak var dataTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        dataTableView.delegate = self
        dataTableView.dataSource = self
        
        dataTableView.reloadData()
        
        
    }


}

