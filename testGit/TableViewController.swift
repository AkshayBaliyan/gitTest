//
//  TableViewController.swift
//  testGit
//
//  Created by Akshay Baliyan on 10/12/18.
//  Copyright © 2018 Briskon Technologies Private Limited. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate , UITableViewDataSource{
    
    
    
    var recordArray: [Int] = Array()
    var limit = 20
    let totalEntries = 100
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.tableFooterView = UIView(frame: .zero )
        
        var index = 0
        while index < limit{
            recordArray.append(index)
            index = index + 1
        }
        
        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recordArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        if cell == nil{
            cell = UITableViewCell(style: .default, reuseIdentifier: "cell") as! TableViewCell
        }
        cell.lblNumber.text = "Row -> \(recordArray[indexPath.row])"
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if indexPath.row == recordArray.count - 1{
            if recordArray.count < totalEntries{
                var index = recordArray.count
                limit = index + 20
                while index < limit{
                    recordArray.append(index)
                    index = index + 1
                    self.perform(#selector(loadData), with: nil, afterDelay: 0.5)
                }
            }
        }
    }
    
    @objc func loadData(){
        self.tableView.reloadData()
    }
    
}

