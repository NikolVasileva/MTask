//
//  ShowDocumentViewController.swift
//  Fibank Mobile Task
//
//  Created by Nikol Vasileva on 24.02.24.
//

import UIKit
import WebKit

class ShowDocumentViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
           super.viewDidLoad()
        let path = Bundle.main.path(forResource: "Tariff-bg", ofType: "pdf")
        let url = URL(fileURLWithPath: path!)
        
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
