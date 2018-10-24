//
//  MovieDrawerViewController.swift
//  KH4K
//
//  Created by Preuttipan Janpen on 22/10/2561 BE.
//  Copyright © 2561 Lphant. All rights reserved.
//

import UIKit

class MovieDrawerViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet weak var tableViewMovieCategories: UITableView!
    
    let categoryArr:[String] = ["Recommended","Most Poppular", "Premium Updated", "Series Updated"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewMovieCategories.tableFooterView = UIView()

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoryArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellCategories = self.tableViewMovieCategories.dequeueReusableCell(withIdentifier: "cellMovieCategories", for: indexPath)
        
        cellCategories.textLabel?.text = categoryArr[indexPath.row]
        cellCategories.textLabel?.textColor = UIColor.white
        
        return cellCategories
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableViewMovieCategories.deselectRow(at: indexPath, animated: true)
    }

}
