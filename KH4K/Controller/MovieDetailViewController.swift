//
//  MovieDetailViewController.swift
//  KH4K
//
//  Created by Preuttipan Janpen on 22/10/2561 BE.
//  Copyright © 2561 Lphant. All rights reserved.
//

import UIKit
import AVKit

class MovieDetailViewController: UIViewController {

    @IBOutlet weak var buttonPlayMovie: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onClickPlayMovie(_ sender: Any) {
        
        let videoURL = URL(string: "http://jplayer.org/video/m4v/Big_Buck_Bunny_Trailer.m4v")
        let player = AVPlayer(url: videoURL!)
        let vc = AVPlayerViewController()
        vc.player = player
        
        present(vc, animated: true) {
            vc.player?.play()
        }
    }
    
}
