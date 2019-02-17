//
//  ViewController.swift
//  header footer table view
//
//  Created by Mac on 01/12/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    
        let flowers = ["rose","lotus","mogra","chafa"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return flowers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = flowers[indexPath.row]
        return cell
    }
    
    @IBOutlet weak var textlabel: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let header = UIView()
        header.backgroundColor = UIColor.green
        header.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 40)
        
        let footer = UIView()
        footer.backgroundColor = UIColor.orange
        footer.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 50)
        
    textlabel.tableHeaderView = header
        textlabel.tableFooterView = footer
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

