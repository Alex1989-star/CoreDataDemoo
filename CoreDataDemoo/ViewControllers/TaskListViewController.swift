//
//  ViewController.swift
//  CoreDataDemoo
//
//  Created by Леся on 06.07.2021.
//

import UIKit

final class TaskListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupNavigationBar()
    }
    
    private func setupNavigationBar() {
        title = "Task List"
        
        navigationController?.navigationBar.prefersLargeTitles = true
        
        //navigation bar appearance
        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.configureWithOpaqueBackground()
        
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        navBarAppearance.backgroundColor = UIColor(
            red: 21 / 255,
            green: 101 / 255,
            blue: 192 / 255,
            alpha: 194 / 255
        )
        
        navigationController?.navigationBar.standardAppearance = navBarAppearance
        navigationController?.navigationBar.scrollEdgeAppearance = navBarAppearance
        
        //Add button to nav bar
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addNewTask))
        navigationController?.navigationBar.tintColor = .white
    }
    
    @objc private func addNewTask() {
        let newTaskVC = NewTaskViewController()
        present(newTaskVC, animated: true)
    }
}

