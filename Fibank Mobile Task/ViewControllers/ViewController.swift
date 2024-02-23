//
//  ViewController.swift
//  Fibank Mobile Task
//
//  Created by Nikol Vasileva on 23.02.24.
//

import UIKit


class ViewController: UIViewController {
    
    var inactivityTimer: Timer?
    
    @IBAction func tariffButtonBg(_ sender: Any) {
        performSegue(withIdentifier: "tariffBgDocument", sender: self)
    }
    
    @IBAction func tariffButtonEn(_ sender: Any) {
        performSegue(withIdentifier: "tariffEnDocument", sender: self)
        
    }
    
    @IBAction func bulletinButtonBg(_ sender: Any) {
        performSegue(withIdentifier: "bulletinBgDocument", sender: self)
    }
        
    
    @IBAction func bulletinButtonEn(_ sender: Any) {
        performSegue(withIdentifier: "bulletinEnDocument", sender: self)
    }
               
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Start the inactivity timer start
        startInactivityTimer()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
       super.touchesBegan(touches, with: event)
        
    // Reset the inactivity timer when user interacts with the screen
       resetInactivityTimer()
    }
    
    func startInactivityTimer() {
    inactivityTimer = Timer.scheduledTimer(timeInterval: 300, target: self, selector: #selector(handleInactivity), userInfo: nil, repeats: true)
    }

    func resetInactivityTimer() {
    inactivityTimer?.invalidate()
    startInactivityTimer()
    }
    
    @objc func handleInactivity() {
    // Navigate back to previous screen when inactivity time limit is reached
        self.view.window!.rootViewController?.dismiss(animated: true, completion: nil)
    }
     
}

