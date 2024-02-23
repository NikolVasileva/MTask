//
//  BulletinEnViewController.swift
//  Fibank Mobile Task
//
//  Created by Nikol Vasileva on 25.02.24.
//

import UIKit
import WebKit

class BulletinEnViewController: UIViewController {

    @IBOutlet weak var pdfBulletinEnView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let path = Bundle.main.path(forResource: "Bulletin-en", ofType: "pdf")
        let url = URL(fileURLWithPath: path!)
        let request = URLRequest(url: url)
        
        pdfBulletinEnView.load(request)
    }
}
