//
//  GameController.swift
//  TTTiOSWebView
//
//  Created by Alex Hill on 7/29/14.
//  Copyright (c) 2014 Alex Hill. All rights reserved.
//

import UIKit

class GameController: UIViewController {
    @IBOutlet strong var web1: UIWebView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var url = NSURL(string: "http://localhost:9393/ios")
        var request = NSURLRequest(URL: url)
        
        if let webView = web1 {
            webView.loadRequest(request)
        } else {
            
            println("web view not instantiated")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

