//
//  TariffEnViewController.swift
//  Fibank Mobile Task
//
//  Created by Nikol Vasileva on 24.02.24.
//

import UIKit
import WebKit

class TariffEnViewController: UIViewController {

    @IBOutlet weak var pdfTariffEnView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let path = Bundle.main.path(forResource: "Tariff-en", ofType: "pdf")
        let url = URL(fileURLWithPath: path!)
        let request = URLRequest(url: url)
        
        pdfTariffEnView.load(request)
    }
}
