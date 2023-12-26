//
//  StackViewController.swift
//  StackView
//
//  Created by ishida.a on 2023/12/18.
//

import UIKit

class StackViewController: UIViewController {
    
    @IBOutlet weak var weather: UILabel!
    @IBOutlet weak var weatherSwitch: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    /// 天気情報の表示非表示の切り替え
    @IBAction func isHiddenSwitchButtonTap(_ sender: Any) {
        let buttonTitle = weatherSwitch.currentTitle
        
        if (buttonTitle! == "非表示"){
            weather.isHidden = true
            weatherSwitch.setTitle("表示", for: .normal)
        }else{
            weather.isHidden = false
            weatherSwitch.setTitle("非表示", for: .normal)
        }
    }
}


