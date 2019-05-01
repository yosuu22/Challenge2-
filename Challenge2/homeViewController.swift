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
    
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var youtubePlayer: WKYTPlayerView!
    @IBOutlet weak var collectionViewImage: UICollectionView!
    @IBOutlet weak var buttonDetail: UIButton!
    
    var avPlayer: AVPlayer!
    var currentIndex = 0
    
    
    let kumpulanGambar = [UIImage(named: "ivan1"), UIImage(named: "ivan2"),UIImage(named: "a1")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pageControl.numberOfPages = kumpulanGambar.count
        youtubePlayer.load(withVideoId: "gu9atqJ29P0")
        
    }
}

extension homeViewController: UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
  
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return kumpulanGambar.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionViewImage.dequeueReusableCell(withReuseIdentifier: "SliderCell", for: indexPath) as! ImagesCollectionViewCell

        cell.image = kumpulanGambar[indexPath.item]
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
        
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
       currentIndex = Int(scrollView.contentOffset.x / collectionViewImage.frame.size.width)
        pageControl.currentPage = currentIndex
    }
}
