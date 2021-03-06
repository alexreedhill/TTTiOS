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
        
        let menu = Menu.sharedInstance
        var url = NSURL(string: "http:ttt-rb.herokuapp.com/ios?humanValue=\(menu.character)&aiType=\(menu.aiType)&firstPlayer=\(menu.firstPlayer)")
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

