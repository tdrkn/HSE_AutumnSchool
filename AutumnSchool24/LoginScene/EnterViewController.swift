//
//  EnterViewController.swift
//  AutmnSchool24
//
//  Created by Emil Shpeklord on 20.07.2024.
//

import UIKit

final class EnterViewController: UIViewController {
    
    struct Constants {
        static let cornerRadiusTextField: CGFloat = 15
        static let cornerRadiusButton: CGFloat = 10
        static let customSpacing: CGFloat = 40
    }

    // Создаем текстовое поле и кнопку
    private let textField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Введите ваш логин"
        textField.borderStyle = .roundedRect
        textField.layer.cornerRadius = Constants.cornerRadiusTextField
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private let button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Войти", for: .normal)
        button.layer.cornerRadius = Constants.cornerRadiusButton
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        // Добавляем текстовое поле и кнопку на экран
        view.addSubview(textField)
        view.addSubview(button)
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        // Устанавливаем констрейнты для элементов UI
        NSLayoutConstraint.activate([
            textField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -Constants.customSpacing),
            textField.widthAnchor.constraint(equalToConstant: 250),
            
            button.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: Constants.customSpacing),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.widthAnchor.constraint(equalToConstant: 100)
        ])
    }
}
