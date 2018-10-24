//
//  PopOverCountryMobileCodeViewController.swift
//  KH4K
//
//  Created by Preuttipan Janpen on 22/10/2561 BE.
//  Copyright © 2561 Lphant. All rights reserved.
//

import UIKit

class PopOverCountryMobileCodeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableViewMobileCountryCode: UITableView!
    
    
    let countryCode:[String] = ["+66","+123","+54","+855","+1"]
    let countryFlag:[UIImage] = [UIImage(named: "flag-france")!,
                                 UIImage(named: "flag-germany")!,
                                 UIImage(named: "flag-spain")!,
                                 UIImage(named: "flag-united-kingdom")!,
                                 UIImage(named: "flag-usa")!]
    
    let controller:RegisterViewController = RegisterViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableViewMobileCountryCode.tableFooterView = UIView()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableViewMobileCountryCode.dequeueReusableCell(withIdentifier: "cellMobileCode", for: indexPath)
        
        cell.textLabel?.text = countryCode[indexPath.row]
        cell.imageView?.image = countryFlag[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableViewMobileCountryCode.deselectRow(at: indexPath, animated: true)
        dismiss(animated: true, completion: nil)
        
        
        
    }
}
