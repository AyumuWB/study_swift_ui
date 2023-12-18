//
//  CountryTableView.swift
//  CountryTableView
//
//  Created by ishida.a on 2023/12/11.
//

import UIKit

class CountryTableViewCell: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    
    let countries: [[String]] = [
        ["日本", "japan.jpg"],
        ["アメリカ", "usa.jpg"],
        ["スペイン", "spain.jpg"],
        ["インド", "india.jpg"],
        ["フランス", "france.jpg"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    /// cellの個数メソット
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    /// cellの設定メソット
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // cellを取得
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "CountryCell", for: indexPath)
        
        // 国名を表示
        let countryName = countries[indexPath.row][0]
        cell.textLabel?.text = countryName
        
        // 国旗画像を表示
        cell.imageView?.image = UIImage(named: countries[indexPath.row][1])?.resize(size: CGSize(width: 50, height: 50))
        
        return cell
    }
    
    /// cellがタップされた時
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //　cellタップで画面遷移処理
        let storyboard = UIStoryboard(name: "CountryDetailViewController", bundle: nil)
        let nexVc =  storyboard.instantiateViewController(withIdentifier: "CountryDetailViewControllerID")as! CountryDetailViewController
        navigationController?.pushViewController(nexVc, animated: true)

        //国名
        let setCountryName = countries[indexPath.row][0]

        //画像名
        let setCountryImg = countries[indexPath.row][1]

        // 遷移先の名前と写真の変数
        nexVc.getCountryName = setCountryName
        nexVc.getCountryImg = setCountryImg
    }
}

/// 画像のリサイズメソット
extension UIImage {
    func resize(size: CGSize) -> UIImage {
        let widthRatio = size.width / self.size.width
        let heightRatio = size.height / self.size.height
        let ratio = (widthRatio < heightRatio) ? widthRatio : heightRatio
        let resizedSize = CGSize(width: (self.size.width * ratio), height: (self.size.height * ratio))
        
        // 画質を落とさないように以下を修正
        UIGraphicsBeginImageContextWithOptions(resizedSize, false, 0.0)
        draw(in: CGRect(x: 0, y: 0, width: resizedSize.width, height: resizedSize.height))
        let resizedImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return resizedImage!
    }
}

