//
//  MovieViewController.swift
//  KH4K
//
//  Created by Preuttipan Janpen on 22/10/2561 BE.
//  Copyright © 2561 Lphant. All rights reserved.
//

import UIKit
import SWRevealViewController

class MovieViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    @IBOutlet weak var collectionViewRecommended: UICollectionView!
    @IBOutlet weak var collectionViewMostPoppular: UICollectionView!
    @IBOutlet weak var collectionViewPremiumUpdate
    : UICollectionView!
    @IBOutlet weak var collectionViewSeriesUpdate: UICollectionView!
    @IBOutlet weak var collectionViewMainRecentlyUpdate: UICollectionView!
    
    @IBOutlet weak var buttonDrawerMenu: UIButton!
    
    let imageArr:[UIImage] = [
        UIImage(named: "avengers")!,
        UIImage(named: "guardians")!,
        UIImage(named: "captain_america")!,
        UIImage(named: "black_panther")!]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let value = UIInterfaceOrientation.portrait.rawValue
        UIDevice.current.setValue(value, forKey: "orientation")

         buttonDrawerMenu.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == collectionViewMainRecentlyUpdate {
            return 6
        } else {
            return 4
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.collectionViewRecommended {
            let cellRecommend = self.collectionViewRecommended.dequeueReusableCell(withReuseIdentifier: "cellRecommend", for: indexPath) as! MovieCollectionViewCell
            
            cellRecommend.imageViewRecommended.image = imageArr[indexPath.row]
            
            return cellRecommend
        }
        
        else if collectionView == self.collectionViewPremiumUpdate {
            let cellPremiumUpdate = self.collectionViewPremiumUpdate.dequeueReusableCell(withReuseIdentifier: "cellPremiumUpdate", for: indexPath) as! MovieCollectionViewCell
            
            cellPremiumUpdate.imageViewPremiumUpdate.image = imageArr[indexPath.row]
            
            return cellPremiumUpdate
        }
        
        else if collectionView == self.collectionViewMostPoppular {
            let cellMostPoppular = self.collectionViewMostPoppular.dequeueReusableCell(withReuseIdentifier: "cellMostPoppular", for: indexPath) as! MovieCollectionViewCell
        
            cellMostPoppular.imageViewMostPoppular.image = imageArr[indexPath.row]
            
            return cellMostPoppular
        }
            
        else if collectionView == self.collectionViewSeriesUpdate {
            let cellSeriesUpdate = self.collectionViewSeriesUpdate.dequeueReusableCell(withReuseIdentifier: "cellSeriesUpdate", for: indexPath) as! MovieCollectionViewCell
        
            cellSeriesUpdate.imageViewSeriesUpdate.image = imageArr[indexPath.row]
            
            return cellSeriesUpdate
        }
        
        else {
            let cellMainRecentlyUpdate = self.collectionViewMainRecentlyUpdate.dequeueReusableCell(withReuseIdentifier: "cellMainRecentlyUpdate", for: indexPath) as! MovieCollectionViewCell
            
            cellMainRecentlyUpdate.imageViewMainRecentlyUpdate.image = UIImage(named: "black_panther")
            
            return cellMainRecentlyUpdate
        }
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .portrait
    }
    
    override var shouldAutorotate: Bool {
        return true
    }

}
