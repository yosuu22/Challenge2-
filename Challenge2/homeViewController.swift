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
import MessageUI

class homeViewController: UIViewController,MFMessageComposeViewControllerDelegate {
    
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var youtubePlayer: WKYTPlayerView!
    @IBOutlet weak var collectionViewImage: UICollectionView!
    @IBOutlet weak var buttonDetail: UIButton!
    
    @IBOutlet weak var buttonMessage: UIButton!
    @IBOutlet weak var buttonInstagram: UIButton!
    var avPlayer: AVPlayer!
    var currentIndex = 0
    
    
    let kumpulanGambar = [UIImage(named: "ivan1"), UIImage(named: "ivan2"),UIImage(named: "a1")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pageControl.numberOfPages = kumpulanGambar.count
        youtubePlayer.load(withVideoId: "gu9atqJ29P0")
        
    }
    
    
    @IBAction func buttonKirimPesan(_ sender: Any) {
        
        let messageVC = MFMessageComposeViewController()
        
        messageVC.body = "Hi,Ivan ";
        messageVC.recipients = ["082157063457"]
        messageVC.messageComposeDelegate = self
        
        self.present(messageVC, animated: true, completion: nil)
        
    }
    
    @IBAction func buttonInstagramPress(_ sender: Any) {
        let Username =  "ivanaldinataa" // Your Instagram Username here
        let appURL = URL(string: "instagram://user?username=\(Username)")!
        let application = UIApplication.shared
        
        if application.canOpenURL(appURL) {
            application.open(appURL)
        } else {
            // if Instagram app is not installed, open URL inside Safari
            let webURL = URL(string: "https://instagram.com/\(Username)")!
            application.open(webURL)
        }
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
    // Protocol iMessage
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
        switch (result) {
        case .cancelled:
            print("Message was cancelled")
            dismiss(animated: true, completion: nil)
        case .failed:
            print("Message failed")
            dismiss(animated: true, completion: nil)
        case .sent:
            print("Message was sent")
            dismiss(animated: true, completion: nil)
        default:
            break
        }
    }
}
