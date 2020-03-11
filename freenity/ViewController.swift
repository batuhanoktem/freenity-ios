//
//  ViewController.swift
//  freenity
//
//  Created by Ergun Batuhan Oktem on 11.03.2020.
//  Copyright © 2020 Freenity. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    @IBOutlet var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Messaging.messaging().subscribe(toTopic: "freenity-news") { error in
          print("Subscribed to weather topic")
        }

        
        let url = URL(string: "https://www.freenity.news")!
        webView.loadRequest(URLRequest(url: url))
    }


}

