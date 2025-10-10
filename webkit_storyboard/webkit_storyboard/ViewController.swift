//
//  ViewController.swift
//  webkit_storyboard
//
//  Created by MacBook on 08/10/25.
//

import UIKit
import WebKit
class ViewController: UIViewController {
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // URL load karna
        if let url = URL(string: "https://www.apple.com") {
            let request = URLRequest(url: url)
            webView.load(request)
        }
        
        
        
        
    }
}

