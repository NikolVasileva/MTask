//
//  BulletinBgViewController.swift
//  Fibank Mobile Task
//
//  Created by Nikol Vasileva on 25.02.24.
//

import UIKit
import WebKit

class BulletinBgViewController: UIViewController {

    @IBOutlet weak var pdfBulletinBgView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let path = Bundle.main.path(forResource: "Bulletin-bg", ofType: "pdf")
        let url = URL(fileURLWithPath: path!)
        let request = URLRequest(url: url)
        
        pdfBulletinBgView.load(request)
    }
}
