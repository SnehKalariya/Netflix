//
//  completSingInPage.swift
//  Netflix
//
//  Created by Sneh kalariya on 16/02/23.
//

import UIKit

class completSingInPage: UIViewController {
    
    @IBOutlet weak var completLabelOutlet: UILabel!
    @IBOutlet weak var completMessageLabelOutlet: UILabel!
    @IBOutlet weak var singOutButtonOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func singOutButtonAction(_ sender: UIButton) {
      navigate()
    }
    @IBAction func netflixLinkAction(_ sender: UIButton) {
        navigate2()
    }
    
    func navigate(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "firstPage") as! firstPage
        navigationController?.pushViewController(navigation, animated: true)
    }
    
    func navigate2(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "help") as! help
        navigationController?.pushViewController(navigation, animated: true)
    }
}
