//
//  help.swift
//  Netflix
//
//  Created by R&W on 02/02/17.
//

import UIKit

class help: UIViewController {

    @IBOutlet weak var webview: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        webview.loadRequest(URLRequest(url: URL(string: "https://help.netflix.com/en/")!))
    }
    



}
