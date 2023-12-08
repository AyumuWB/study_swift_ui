//
//  HomeView.swift
//  AutoLayoutStudy
//
//  Created by ishida.a on 2023/12/05.
//

import UIKit

class HomeView: UIViewController {
    
    @IBOutlet weak var mailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func nexViewButtonTop(_ sender: Any) {
        var mail = mailTextField.text
        var pas = passwordTextField.text
        
        if (mail == "a" && pas == "a"){
            var storyBoard = UIStoryboard(name: "NextView", bundle: Bundle.main)
            var nexVc =  storyBoard.instantiateViewController(withIdentifier: "NextViewID")as! NextView
            
            nexVc.getMail = mailTextField.text!
            
            self.navigationController?.pushViewController(nexVc, animated: true)
        }
    }
}
