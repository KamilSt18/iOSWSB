//
//  InfoViewController.swift
//  PortfolioApp
//
//  Created by Student G225 08 on 14/03/2022.
//

import UIKit
import WebKit

class InfoViewController: UIViewController, WKUIDelegate {

    var webView: WKWebView!

    
    override func loadView() {
            let webConfiguration = WKWebViewConfiguration()
            webView = WKWebView(frame: .zero, configuration: webConfiguration)
            webView.uiDelegate = self
            view = webView
        }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL(string: "https://www.wp.pl")
                let request = URLRequest(url: url!)
                webView.load(request)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
