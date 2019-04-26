//
//  profilePageViewController.swift
//  Challenge2
//
//  Created by Yosua Candra  on 26/04/19.
//  Copyright © 2019 Yosua Candra . All rights reserved.
//

import UIKit

class profilePageViewController: UIViewController {
let shapeLayer = CAShapeLayer()
    @IBOutlet weak var uiViewBar1: UIView!
    @IBOutlet weak var uiViewBar3: UIView!
    @IBOutlet weak var uiViewBar2: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

       // Gambar Lingkaran
        
        
        let viewCenter = uiViewBar1.center
        
        //Create trackLayer
        let trackLayer = CAShapeLayer()
        let circularPath = UIBezierPath(arcCenter: viewCenter, radius: 40, startAngle: -CGFloat.pi / 2, endAngle: 2 * CGFloat.pi, clockwise: true)
        
        trackLayer.path = circularPath.cgPath
        
        trackLayer.strokeColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        trackLayer.lineWidth = 10
        trackLayer.lineCap = CAShapeLayerLineCap.round
        trackLayer.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(trackLayer)
        
        
        let circularPath2 = UIBezierPath(arcCenter: viewCenter, radius: 40, startAngle: -CGFloat.pi / 2, endAngle: CGFloat.pi, clockwise: true)
        
        shapeLayer.path = circularPath2.cgPath
        
        shapeLayer.strokeColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        shapeLayer.lineWidth = 10
        shapeLayer.lineCap = CAShapeLayerLineCap.round
        shapeLayer.fillColor = UIColor.clear.cgColor
        
        shapeLayer.strokeEnd = 0
//        shapeLayer.fillColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
        
        
        view.layer.addSublayer(shapeLayer)
        
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap)))
    }
  
    @objc private func handleTap () {
    print ("Mantaps")
    
        let basicAnimation = CABasicAnimation(keyPath: "strokeEnd")
        basicAnimation.toValue = 1
        basicAnimation.duration = 2
        basicAnimation.fillMode = CAMediaTimingFillMode.forwards
        basicAnimation.isRemovedOnCompletion = false
        
        shapeLayer.add(basicAnimation, forKey: "urToBasic")
        
    }

   

}
