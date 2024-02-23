//
//  TariffBgViewController.swift
//  Fibank Mobile Task
//
//  Created by Nikol Vasileva on 24.02.24.
//

import UIKit
import WebKit

class TariffBgViewController: UIViewController {

    
    @IBOutlet weak var pdfTariffBgView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "Tariff-bg", ofType: "pdf")
        let url = URL(fileURLWithPath: path!)
        let request = URLRequest(url: url)
        
        pdfTariffBgView.load(request)
    }
}
