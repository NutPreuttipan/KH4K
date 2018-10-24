//
//  MoreViewController.swift
//  KH4K
//
//  Created by Preuttipan Janpen on 22/10/2561 BE.
//  Copyright © 2561 Lphant. All rights reserved.
//

import UIKit

class MoreViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    @IBOutlet weak var tableViewMoreMenu: UITableView!
    
    let menuList:[String] = ["Topup","Setting","Sign Out"]
    override func viewDidLoad() {
        super.viewDidLoad()

        tableViewMoreMenu.tableFooterView = UIView()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableViewMoreMenu.dequeueReusableCell(withIdentifier: "cellMoreMenu", for: indexPath)
        
        cell.textLabel?.text = menuList[indexPath.row]
        cell.textLabel?.textColor = UIColor.white
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableViewMoreMenu.deselectRow(at: indexPath, animated: true)
        
        if indexPath.row == 2 {
            let loginVC = storyboard?.instantiateViewController(withIdentifier: "loginVC") as! LoginViewController
            present(loginVC, animated: true, completion: nil)
        }
    }
    

}
