//
//  StoryViewController.swift
//  Challenge2
//
//  Created by Yosua Candra  on 02/05/19.
//  Copyright © 2019 Yosua Candra . All rights reserved.
//

import UIKit

class StoryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
       
    }
    

    @IBAction func buttonFacebook(_ sender: Any) {
        
        let Username =  "van.aldinata" // Your Facebook Username here
        let appURL = URL(string: "fb://profile/\(Username)")!
        let application = UIApplication.shared
        
        if application.canOpenURL(appURL) {
            application.open(appURL)
        } else {
            // if Facebook app is not installed, open URL inside Safari
            let webURL = URL(string: "https://facebook.com/\(Username)")!
            application.open(webURL)
        }
    
        
    }
    
    
    @IBAction func buttonLinkend(_ sender: Any) {
        
        let Username =  "ivan-aldinata-b76016137" // Your Facebook Username here
        let appURL = URL(string: "linkedin://profile/\(Username)")!
        let application = UIApplication.shared
        
        if application.canOpenURL(appURL) {
            application.open(appURL)
        } else {
            // if Facebook app is not installed, open URL inside Safari
            let webURL = URL(string: "https://www.linkedin.com/in/\(Username)")!
            application.open(webURL)
        }
        
    }
    
    
    @IBAction func buttonInstagram(_ sender: Any) {
        
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
