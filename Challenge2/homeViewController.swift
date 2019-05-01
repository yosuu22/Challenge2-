//
//  homeViewController.swift
//  Challenge2
//
//  Created by Yosua Candra  on 26/04/19.
//  Copyright © 2019 Yosua Candra . All rights reserved.
//

import UIKit
import AVFoundation
import AVKit
import YoutubePlayer_in_WKWebView

class homeViewController: UIViewController {
    
    @IBOutlet weak var youtubePlayer: WKYTPlayerView!
    
    @IBOutlet weak var buttonDetail: UIButton!
    
    var avPlayer: AVPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        youtubePlayer.load(withVideoId: "gu9atqJ29P0")
        
    }
}
