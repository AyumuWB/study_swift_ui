//
//  Hello.swift
//  AutoLayoutStudy
//
//  Created by ishida.a on 2023/12/05.
//

import UIKit

class NextView : UIViewController {
    
    @IBOutlet weak var userName: UILabel!
    var getMail = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        userName.text = getMail
    }
}
