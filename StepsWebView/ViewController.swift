//
//  ViewController.swift
//  StepsWebView
//
//  Created by Justin Robert Gold on 23/06/2019.
//  Copyright © 2019 Justin Robert Gold. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet weak var webWeb: WKWebView!
    @IBOutlet weak var txtWeb: UITextField!
    @IBAction func btnWeb(_ sender: Any) {
        
        let address: String = txtWeb.text!
        if address == "" {
            let  alertController = UIAlertController(title: "Invalid entry",
                                                     message: "Please enter a valid URL",
                                                     preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default)
            alertController.addAction(okAction)
            self.present(alertController, animated: true, completion: nil)
            return
        }
        else{
            let userurl = URL(string: address)!
            webWeb.load(URLRequest(url: userurl))
        }
        
        for textField in self.view.subviews where textField is UITextField {
            textField.resignFirstResponder()
        }
        
        }
        
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let starturl = URL(string: "https://www.bbc.co.uk")!
        webWeb.load(URLRequest(url: starturl))
        
    }

}


