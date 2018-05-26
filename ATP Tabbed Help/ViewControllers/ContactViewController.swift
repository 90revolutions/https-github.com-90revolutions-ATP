//
//  ContactViewController.swift
//  ATP Tabbed Help
//
//  Created by Steven Berkey on 5/22/18.
//  Copyright © 2018 90Rev. All rights reserved.
//

import UIKit
import WebKit

class ContactViewController: UIViewController, WKNavigationDelegate, WKUIDelegate {
    
    var webView: WKWebView!
    
    @IBOutlet weak var webviewContact: WKWebView!
    @IBOutlet weak var progressView: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let site = "http://google.com"
        let url = URL(string: site)
        let request = URLRequest(url: url!)
        webView = WKWebView(frame: self.view.frame)
        webView.navigationDelegate = self
        webView.uiDelegate = self
        webView.load(request)
        self.view.addSubview(webView)
        
        progressView = UIProgressView(progressViewStyle: .default)
        progressView.sizeToFit()
        // Set frame to exact below of navigation bar if available
        progressView.frame = CGRect(x: 0, y: 64, width: self.view.bounds.size.width, height: 20)
        self.view.addSubview(progressView)
        
        webView.addObserver(self, forKeyPath:
            #keyPath(WKWebView.estimatedProgress), options: .new, context: nil)

        self.navigationItem.largeTitleDisplayMode = .never
    
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == "estimatedProgress" {
            print("estimatedProgress")
            progressView.progress = Float(webView.estimatedProgress)
        }}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

}
