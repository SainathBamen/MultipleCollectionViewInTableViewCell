//
//  ViewController.swift
//  MultipleCollectionViewInTableViewCell
//
//  Created by Sainath Bamen on 21/04/23.
//

import UIKit


class ViewController: UIViewController {
    var data:[String] = ["dell1","dell1","dell1","dell1","dell1","dell1","dell1","dell1"]
    var data2:[String] = ["dell2","dell2","dell2","dell2"]

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController:UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
        
    }
    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return data[section].self
//    }
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return data.count
//    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tablecell", for: indexPath) as! MyTableViewCell
        
        if indexPath.section == 0 {
            
            cell.myCollectionView.tag = 0
        } else {
            
            cell.myCollectionView2.tag = 1
        }
        
//        cell.myCollectionView.reloadData()
        
        return cell
    }
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        view.tintColor = .red
    }
    
}
