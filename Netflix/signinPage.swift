//
//  signinPage.swift
//  Netflix
//
//  Created by R&W on 01/01/23.
//

import UIKit

class signinPage: UIViewController {

    @IBOutlet weak var SigninButton: UIButton!
    @IBOutlet weak var phoneNoTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        phoneNoTextField.layer.cornerRadius = 15
        SigninButton.layer.borderWidth = 3
        SigninButton.layer.borderColor = UIColor.white.cgColor
        SigninButton.layer.cornerRadius = 8
    }
    
    @IBAction func needHelpButtonAction(_ sender: UIButton) {
    }
    @IBAction func SingInButtonAction(_ sender:UIButton){
        
        if phoneNoTextField.text == "" && passwordTextField.text == ""{
            alertLogin(title: "Please enter the phoneNo & password")
        }
        else if phoneNoTextField.text == ""{
            alertLogin(title: "Please enter the username")
        }
        else if passwordTextField.text == ""{
            alertLogin(title: "Please enter the password")
        }
        navigate()
    }
    
    func alertLogin(title:String){
        let alert = UIAlertController(title: "ERROR", message: title, preferredStyle: .alert)
        alert.addAction(UIAlertAction.init(title: "OK", style: .default, handler: nil))
        alert.addAction(UIAlertAction.init(title: "CANCEL", style: .destructive, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    func navigate(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "completSingInPage") as! completSingInPage
        navigationController?.pushViewController(navigation, animated: true)
    }


}
