//
//  Login.swift
//  aromatic_candle
//
//  Created by Анна Горева on 19.07.2023.
//

import UIKit

class Login: UIViewController {
    
    let loginLabel = UILabel()
    let loginTextField = UITextField()
    let passwordLabel = UILabel()
    let passwordTextField = UITextField()
    let enterButton = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: login label
        loginLabel.text = "Введите Ваш логин"
        loginLabel.textColor = UIColor.white
        loginLabel.font = UIFont.systemFont(ofSize: 20.0)
        loginLabel.frame = CGRect(x: 35, y: 250, width: 200, height: 30)
        view.addSubview(loginLabel)
        
        //MARK: login textfield
        loginTextField.attributedPlaceholder = NSAttributedString(string: "логин", attributes: [NSAttributedString.Key.foregroundColor : UIColor.lightGray])
        loginTextField.borderStyle = .bezel
        loginTextField.tintColor = .black
        loginTextField.textColor = UIColor.white
        loginTextField.frame = CGRect(x: 35, y: 280, width: 200, height: 30)
        view.addSubview(loginTextField)
        
        //MARK: password label
        passwordLabel.text = "Введите Ваш пароль"
        passwordLabel.textColor = UIColor.white
        passwordLabel.font = UIFont.systemFont(ofSize: 20.0)
        passwordLabel.frame = CGRect(x: 35, y: 350, width: 200, height: 30)
        view.addSubview(passwordLabel)
        
        //MARK: password textfield
        passwordTextField.attributedPlaceholder = NSAttributedString(string: "пароль", attributes: [NSAttributedString.Key.foregroundColor : UIColor.lightGray])
        passwordTextField.borderStyle = .bezel
        passwordTextField.tintColor = .black
        passwordTextField.textColor = UIColor.white
        passwordTextField.frame = CGRect(x: 35, y: 380, width: 200, height: 30)
        view.addSubview(passwordTextField)
        
        //MARK: вход
        enterButton.setTitle("Войти", for: .normal)
        enterButton.backgroundColor = UIColor.black
        enterButton.tintColor = UIColor.white
        enterButton.sizeToFit()
        enterButton.frame = CGRect(x: 70, y: 430, width: 100, height: 30)
        enterButton.addTarget(self, action: #selector(enter(parametrSender:)), for: .touchUpInside)
        view.addSubview(enterButton)
    }
    
    @objc func enter(parametrSender: Any){
        if (loginTextField.text!.isEmpty || loginTextField.text! != "Anna") || (passwordTextField.text!.isEmpty || passwordTextField.text! != "123") {
            let alert = UIAlertController(title: "Ошибка входа", message: "Проверьте корректность данных", preferredStyle: .alert)
            let alertCancel = UIAlertAction(title: "ОК", style: .cancel)
            alert.addAction(alertCancel)
            present(alert, animated: true)
        } else {
            let catalogVC = Catalog()
            self.navigationController?.pushViewController(catalogVC, animated: false)
        }
        
        
    }
    


}
