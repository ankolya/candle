//
//  ViewController.swift
//  aromatic_candle
//
//  Created by Анна Горева on 19.07.2023.
//

import UIKit

class ViewController: UIViewController {

    let nameOfShopLabel = UILabel()
    let generalImage = UIImageView()
    let loginButton = UIButton()
    let catalogButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: Label Banka home
        nameOfShopLabel.text = "Banka Home"
        nameOfShopLabel.textColor = UIColor.white
        nameOfShopLabel.font = UIFont.systemFont(ofSize: 35.0)
        nameOfShopLabel.frame = CGRect(x: 100, y: 100, width: 300, height: 30)
        view.addSubview(nameOfShopLabel)
        
        //MARK: картинка
        generalImage.image = UIImage(named: "generalimage.jpeg")
        generalImage.frame = CGRect(x: 0, y: 0, width: 500, height: 500)
        generalImage.center = view.center
        view.addSubview(generalImage)
        
        //MARK: кнопка регистрации
        loginButton.setTitle("Регистрация", for: .normal)
        loginButton.frame = CGRect(x: 20, y: 730, width: 150, height: 30)
        loginButton.titleLabel?.font = UIFont.systemFont(ofSize: 20.0)
        loginButton.addTarget(self, action: #selector(login), for: .touchUpInside)
        view.addSubview(loginButton)
        
        //MARK: каталог
        catalogButton.setTitle("Каталог", for: .normal)
        catalogButton.frame = CGRect(x: 200, y: 730, width: 150, height: 30)
        catalogButton.titleLabel?.font = UIFont.systemFont(ofSize: 20.0)
        catalogButton.addTarget(self, action: #selector(catalog(parametrSender:)), for: .touchUpInside)
        view.addSubview(catalogButton)
    }
    
    @objc func login(parametrSender: Any){
        let loginVC = Login()
        self.navigationController?.pushViewController(loginVC, animated: true)
    }
    
    @objc func catalog(parametrSender: Any){
        let catalogVC = Catalog()
        self.navigationController?.pushViewController(catalogVC, animated: true)
    }
}

