//
//  ThirdVC.swift
//  NavigationControllerWithCode
//
//  Created by DA MAC M1 157 on 2023/08/06.
//

import UIKit

class ThirdVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        navigationItem.title = "Third View Controller"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Dismiss", style: UIBarButtonItem.Style.plain, target: self, action: #selector(dismissVC))
    }
    
    
    @objc func dismissVC() {
        dismiss(animated: true)
    }

}
