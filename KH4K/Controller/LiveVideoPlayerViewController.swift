//
//  ViewController.swift
//  KH4K
//
//  Created by Preuttipan Janpen on 10/10/2561 BE.
//  Copyright © 2561 Lphant. All rights reserved.
//

import UIKit
import AVKit

class LiveVideoPlayerViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var viewVideoPlayer: VideoView!
    @IBOutlet weak var viewOverLay: UIView!
    @IBOutlet weak var viewOverLayTap: UIView!
    @IBOutlet weak var tableviewChannelList: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let value = UIInterfaceOrientation.landscapeRight.rawValue
        UIDevice.current.setValue(value, forKey: "orientation")
        
        let overLayTap = UITapGestureRecognizer(target: self, action: #selector(LiveVideoPlayerViewController.hideOverLayView(_:)))
        viewOverLayTap.addGestureRecognizer(overLayTap)
        
        let playerTap = UITapGestureRecognizer(target: self, action: #selector(LiveVideoPlayerViewController.showOverLayView(_:)))
        viewVideoPlayer.addGestureRecognizer(playerTap)
        
        viewVideoPlayer.configure(url: "http://jplayer.org/video/m4v/Big_Buck_Bunny_Trailer.m4v")
        viewVideoPlayer.isLoop = true
        viewVideoPlayer.play()
        
    }
    
    @IBAction func onClickPlayVideo(_ sender: Any) {
//        let video = AVPlayer(url: URL(string: "http://jplayer.org/video/m4v/Big_Buck_Bunny_Trailer.m4v")!)
//        let videoPlay = AVPlayerViewController()

//        videoPlay.player = video
//
        let vc = storyboard?.instantiateViewController(withIdentifier: "viewVideoPlayer") as! LiveVideoPlayerViewController
        present(vc, animated: true, completion: nil)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 9
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: ChannelTableViewCell = self.tableviewChannelList.dequeueReusableCell(withIdentifier: "channelList", for: indexPath) as! ChannelTableViewCell
        
        cell.backgroundColor = UIColor.clear
        cell.imageViewChannelPicture.image = UIImage(named: "livechannel\(indexPath.row + 1)")
        return cell
    }
    
    @objc func showOverLayView(_ sender: UITapGestureRecognizer) {
        print("show")
        self.viewOverLay.isHidden = false
    }
    
    @objc func hideOverLayView(_ sender: UITapGestureRecognizer) {
        print("hide")
        self.viewOverLay.isHidden = true
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscapeRight
    }
    
    override var shouldAutorotate: Bool {
        return true
    }
}

