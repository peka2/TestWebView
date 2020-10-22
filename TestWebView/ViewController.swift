//
//  ViewController.swift
//  TestWebView
//
//  Created by Masayoshi Okada on 2020/10/16.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://cookpad.com/")!
        
        let request = URLRequest(url: url)
        
        webView.load(request)
        
        let newContentInset = UIEdgeInsets(top: 800, left: 0, bottom: 0, right: 0)
        webView.scrollView.contentInset.top = newContentInset.top

        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            self.webView.reload()
        }
        
    }

}

