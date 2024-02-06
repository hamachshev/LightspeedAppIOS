//
//  ViewController.swift
//  Lightspeed
//
//  Created by Aharon Seidman on 2/6/24.
//

import UIKit

class MainVC: UITableViewController {
    let rows = ["Misson", "Trending", "Recent Orders", "Order Status"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor(named: "MainBackground")
        tableView.tableHeaderView = LSHeader()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        //
//    }
    
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        rows.count
//    }


}

