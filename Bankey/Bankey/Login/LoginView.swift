//
//  LoginView.swift
//  Bankey
//
//  Created by Sergii Bala on 5/17/22.
//

import Foundation
import UIKit

class LoginView: UIView {
    
    let stackView = UIStackView()
    let userNameTextField = UITextField()
    let passwordTextField = UITextField()
    let dividerView = UIView()
    let button = UIButton()
    let nameLabel = UILabel()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        style()
        layout()

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implimented")
    }

}

extension LoginView {
    
    func style() {
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .secondarySystemFill
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 8
        
        userNameTextField.translatesAutoresizingMaskIntoConstraints = false
        userNameTextField.placeholder = "Username"
        userNameTextField.delegate = self
        
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.placeholder = "Password"
        passwordTextField.isSecureTextEntry = true
        passwordTextField.delegate = self
        
        dividerView.translatesAutoresizingMaskIntoConstraints = false
        dividerView.backgroundColor = .secondarySystemFill
        
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.textAlignment = .center
        nameLabel.text = "Bankey"
        
        
    //    let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
    //       label.center = CGPoint(x: 160, y: 285)
    //       label.textAlignment = .center
    //       label.text = "I'm a test label"
        
        layer.cornerRadius = 5
        clipsToBounds = true
    }
    
    func layout() {
        
        stackView.addArrangedSubview(userNameTextField)
        stackView.addArrangedSubview(dividerView)
        stackView.addArrangedSubview(passwordTextField)
        addSubview(stackView)
        

        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 1),
            stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 1),
            trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 1),
            bottomAnchor.constraint(equalToSystemSpacingBelow: stackView.bottomAnchor, multiplier: 1)
        ])

        
        dividerView.heightAnchor.constraint(equalToConstant: 1).isActive = true


    }
}

extension LoginView: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        userNameTextField.endEditing(true)
        passwordTextField.endEditing(true)
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
    }
    
}
