//
//  ViewController.swift
//  Netflix
//
//  Created by R&W on 01/01/23.
//

import UIKit

class firstPage
: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextField.layer.borderWidth = 1
        emailTextField.layer.borderColor = UIColor.blue.cgColor
        
    }
    @IBAction func getstartedActionButton(_ sender: UIButton) {
        if emailTextField.text == "" {
        showalert(tital:" please anter E-mail address")
        }
        
       
        
        func showalert (tital:String){
            let alert = UIAlertController(title: "Error", message: tital , preferredStyle: .alert)
            alert.addAction(UIAlertAction.init(title: "ok", style: .default, handler: nil))
            alert.addAction(UIAlertAction.init(title: "cancel", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
        
        
        }
    }

  


