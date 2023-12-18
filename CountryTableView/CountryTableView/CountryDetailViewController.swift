//
//  CountryDetailView.swift
//  CountryTableView
//
//  Created by ishida.a on 2023/12/12.
//

import UIKit

class CountryDetailViewController: UIViewController {
    
    @IBOutlet weak var CountryImg: UIImageView!
    @IBOutlet weak var CountryName: UILabel!
    @IBOutlet weak var setNationalFood: UILabel!
    
    var getCountryName = ""
    var getCountryImg = ""
    var nationalFood = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CountryName.text = getCountryName
        
        // 国民食をリサイズ
        setNationalFood.adjustsFontSizeToFitWidth = true
        
        // タップされた画像を再出力
        let displayCountryImg  = UIImage(named: getCountryImg)
        CountryImg.image = displayCountryImg
        
        // 選択した国の国民食を表示する処理
        if ("日本" == getCountryName){
            nationalFood = "お寿司"
        }else if ("アメリカ" == getCountryName){
            nationalFood = "ハンバーガー"
        }else if ("スペイン" == getCountryName){
            nationalFood = "トルティーヤ"
        }else if ("インド" == getCountryName){
            nationalFood = "カレー"
        }else if ("フランス" == getCountryName){
            nationalFood = "キッシュ"
        }
        setNationalFood.text = nationalFood
    }
}
