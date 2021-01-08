//
//  TwitterViewController.swift
//  DanDCheats
//
//  Created by Samantha on 07/01/2021.
//

import UIKit
import SafariServices
import WebKit

class TwitterViewController: UIViewController, WKUIDelegate {
    
    @IBOutlet weak var webView: WKWebView!
    @IBAction func close(){
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func openTwitter(){
        let vc =  SFSafariViewController(url: URL(string : "https:/www.twitter.com")!)
        present(vc, animated:true)
    }
    
    override func loadView() {
            let webConfiguration = WKWebViewConfiguration()
            webView = WKWebView(frame: .zero, configuration: webConfiguration)
            webView.uiDelegate = self
            view = webView
        }
        override func viewDidLoad() {
            super.viewDidLoad()
            
            let myURL = URL(string:"https://twitter.com/wizards_dnd?lang=fr")
            let myRequest = URLRequest(url: myURL!)
            webView.load(myRequest)
        }    
}

