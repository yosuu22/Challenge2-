//
//  ProfilePage2ViewController.swift
//  Challenge2
//
//  Created by Yosua Candra  on 29/04/19.
//  Copyright © 2019 Yosua Candra . All rights reserved.
//

import UIKit

class ProfilePage2ViewController: UIViewController {

    @IBOutlet weak var uiViewBar1: UIView!
    @IBOutlet weak var uiViewBar2: UIView!
    @IBOutlet weak var uiViewBar3: UIView!
    @IBOutlet weak var progressView1: UIProgressView!
     @IBOutlet weak var progressView2: UIProgressView!
    @IBOutlet weak var progressView3: UIProgressView!
     @IBOutlet weak var progressView4: UIProgressView!
    
    var minValue = 0
    let maxValue = 100
    var downloader = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        progressView1.transform = progressView1.transform.scaledBy(x: 1, y: 5)
        progressView2.transform = progressView2.transform.scaledBy(x: 1, y: 5)
        progressView3.transform = progressView3.transform.scaledBy(x: 1, y: 5)
        progressView4.transform = progressView4.transform.scaledBy(x: 1, y: 5)
        
        // Set up ProgressBar 1
        progressView1.setProgress(0, animated: false)
        
         downloader = Timer.scheduledTimer(timeInterval: 0.03, target: self, selector: (#selector(ProfilePage2ViewController.proses)), userInfo: nil, repeats: true)
        
        // Buat viewCenter untuk masing-masing bar
        let viewCenterBar1 = CGPoint(x: 53, y: 55) //uiViewBar1.center
        let viewCenterBar2 = CGPoint(x: 53, y: 55)
        let viewCenterbar3 = CGPoint(x: 53, y: 55)
        
        
        
        
        
        //TrackLayer Swift
        let trackLayer = CAShapeLayer()
        let circularPath = UIBezierPath(arcCenter: viewCenterBar1, radius: 40, startAngle: -CGFloat.pi / 2, endAngle: 2 * CGFloat.pi, clockwise: true)
        
        trackLayer.path = circularPath.cgPath
        
        trackLayer.strokeColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        trackLayer.lineWidth = 10
        trackLayer.lineCap = CAShapeLayerLineCap.round
        trackLayer.fillColor = UIColor.clear.cgColor
        uiViewBar1.layer.addSublayer(trackLayer)
        
        
        
        // Track Layer Python
        let trackLayerPython = CAShapeLayer()
        let circularPathPython = UIBezierPath(arcCenter: viewCenterBar2, radius: 40, startAngle: -CGFloat.pi / 2, endAngle: 2 * CGFloat.pi, clockwise: true)
        
        trackLayerPython.path = circularPathPython.cgPath
        
        trackLayerPython.strokeColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        trackLayerPython.lineWidth = 10
        trackLayerPython.lineCap = CAShapeLayerLineCap.round
        trackLayerPython.fillColor = UIColor.clear.cgColor
       uiViewBar2.layer.addSublayer(trackLayerPython)
        
        
        
        // Track Layer HTML5
        let trackLayerHTML5 = CAShapeLayer()
        let circularPathHTML5 = UIBezierPath(arcCenter: viewCenterbar3, radius: 40, startAngle: -CGFloat.pi / 2, endAngle: 2 * CGFloat.pi, clockwise: true)
        
        trackLayerHTML5.path = circularPathHTML5.cgPath
        
        trackLayerHTML5.strokeColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        trackLayerHTML5.lineWidth = 10
        trackLayerHTML5.lineCap = CAShapeLayerLineCap.round
        trackLayerHTML5.fillColor = UIColor.clear.cgColor
        uiViewBar3.layer.addSublayer(trackLayerHTML5)
        
        
        // Fill Layer Swift
        let shapeLayerSwift = CAShapeLayer()
        let circularPath2 = UIBezierPath(arcCenter: viewCenterBar1, radius: 40, startAngle: -CGFloat.pi / 2, endAngle: CGFloat.pi, clockwise: true)
        
        shapeLayerSwift.path = circularPath2.cgPath
        
        shapeLayerSwift.strokeColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        shapeLayerSwift.lineWidth = 10
        shapeLayerSwift.lineCap = CAShapeLayerLineCap.round
        shapeLayerSwift.fillColor = UIColor.clear.cgColor
        
        shapeLayerSwift.strokeEnd = 0
       uiViewBar1.layer.addSublayer(shapeLayerSwift)
        
        let basicAnimation = CABasicAnimation(keyPath: "strokeEnd")
        basicAnimation.toValue = 1
        basicAnimation.duration = 2
        basicAnimation.fillMode = CAMediaTimingFillMode.forwards
        basicAnimation.isRemovedOnCompletion = false
        
        shapeLayerSwift.add(basicAnimation, forKey: "urToBasic")
        
        // Fill Layer Python
        
        let shapeLayerPython = CAShapeLayer()
        let circularPath2Python = UIBezierPath(arcCenter: viewCenterBar2, radius: 40, startAngle: -CGFloat.pi / 2 , endAngle: CGFloat.pi - 40, clockwise: true)
        
        shapeLayerPython.path = circularPath2Python.cgPath
        
        shapeLayerPython.strokeColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
        shapeLayerPython.lineWidth = 10
        shapeLayerPython.lineCap = CAShapeLayerLineCap.round
        shapeLayerPython.fillColor = UIColor.clear.cgColor
        
        shapeLayerPython.strokeEnd = 0
        uiViewBar2.layer.addSublayer(shapeLayerPython)
        
        let basicAnimationPython = CABasicAnimation(keyPath: "strokeEnd")
        basicAnimationPython.toValue = 1
        basicAnimationPython.duration = 0.5
        basicAnimationPython.fillMode = CAMediaTimingFillMode.forwards
        basicAnimationPython.isRemovedOnCompletion = false
        
        shapeLayerPython.add(basicAnimation, forKey: "urToBasic")
        
        // Fill Layer for HTML5
        
        let shapeLayerHTML5 = CAShapeLayer()
        let circularPath2HTML5 = UIBezierPath(arcCenter: viewCenterbar3, radius: 40, startAngle: -CGFloat.pi / 2, endAngle: CGFloat.pi - 14, clockwise: true)
        
        shapeLayerHTML5.path = circularPath2HTML5.cgPath
        
        shapeLayerHTML5.strokeColor = #colorLiteral(red: 0.9254901961, green: 0.8, blue: 0.4078431373, alpha: 1)
        shapeLayerHTML5.lineWidth = 10
        shapeLayerHTML5.lineCap = CAShapeLayerLineCap.round
        shapeLayerHTML5.fillColor = UIColor.clear.cgColor
        
        shapeLayerHTML5.strokeEnd = 0
        uiViewBar3.layer.addSublayer(shapeLayerHTML5)
        
        let basicAnimationHTML5 = CABasicAnimation(keyPath: "strokeEnd")
        basicAnimationHTML5.toValue = 1
        basicAnimationHTML5.duration = 0.5
        basicAnimationHTML5.fillMode = CAMediaTimingFillMode.forwards
        basicAnimationHTML5.isRemovedOnCompletion = false
        
        shapeLayerHTML5.add(basicAnimation, forKey: "urToBasic")
        
        
        
        
    }
    @objc func proses() {
        if minValue != 80 {
            minValue += 1
           progressView1.progress = Float(minValue) / Float(maxValue)
        }
        else {
            minValue = 0
            downloader.invalidate()
        }
    }
    
        
    }
    




