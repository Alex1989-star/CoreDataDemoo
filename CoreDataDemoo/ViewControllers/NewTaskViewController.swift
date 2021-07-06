//
//  NewTaskViewController.swift
//  CoreDataDemoo
//
//  Created by Леся on 06.07.2021.
//

import UIKit

final class NewTaskViewController: UIViewController {
    
    lazy var taskTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "New task"
        textField.borderStyle = .roundedRect
        textField.textColor = .darkGray 
        
        return textField
    }()
    
    lazy var saveButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 21 / 265, green: 101 / 255, blue: 192 / 255, alpha: 1)
        button.setTitle("Save Task", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 4
        button.addTarget(self, action: #selector(save), for: .touchUpInside)
        
        return button
    }()
    
    lazy var cancelButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 220 / 265, green: 101 / 255, blue: 192 / 255, alpha: 1)
        button.setTitle("Cancel Task", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 4
        button.addTarget(self, action: #selector(cancel), for: .touchUpInside)
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setConstraints()
    }
    
    @objc private func save() {
        dismiss(animated: true)
    }
    
    @objc private func cancel() {
        dismiss(animated: true)
    }
    
}
