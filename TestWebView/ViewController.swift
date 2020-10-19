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
        
        let newContentInset = UIEdgeInsets(top: 700, left: 0, bottom: 0, right: 0)
        webView.scrollView.contentInset.top = newContentInset.top

//        webView.setValue(newContentInset, forKey: "_obscuredInsets")
//        webView.setValue(true, forKey: "_haveSetObscuredInsets")

        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            self.webView.reload()
        }
        
    }

}

