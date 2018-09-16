//
//  WebBrowserViewController.swift
//  Privacy
//
//  Created by 黃浩源 on 16/9/2018.
//  Copyright © 2018年 黃浩源. All rights reserved.
//

import UIKit
import WebKit

class WebBrowserViewController: UIViewController {
    @IBOutlet weak var URLBox: UITextField!
    @IBOutlet weak var webview: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func Go(_ sender: Any) {
        let url = NSURL(string: URLBox.text!)
        let request = NSURLRequest(url: url! as URL)
        webview.load(request as URLRequest)
    }
    @IBAction func Back(_ sender: Any) {
        if webview.canGoBack{
            webview.goBack()
        }
    }
    @IBAction func Reload(_ sender: Any) {
        webview.reload()
    }
    @IBAction func Forward(_ sender: Any) {
        if webview.canGoForward{
            webview.goForward()
        }
    }
    @IBAction func Exit(_ sender: Any) {
        exit(0);
    }
    
}
