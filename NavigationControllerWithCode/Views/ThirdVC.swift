//
//  ThirdVC.swift
//  NavigationControllerWithCode
//
//  Created by DA MAC M1 157 on 2023/08/06.
//

import UIKit

class ThirdVC: UIViewController {

    private let myButton: UIButton = {
        let  button = UIButton()
        button.setTitle("Present Modally", for: .normal)
        button.backgroundColor = .systemTeal
        button.setTitleColor(UIColor.white, for: UIControl.State.normal)
        button.frame = CGRect(x: 100, y: 300, width: 200, height: 50)
        
        button.layer.cornerRadius = CGFloat(25)
        button.layer.shadowOffset =  CGSize(width: 3, height: 5)
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.8
        button.layer.borderColor = UIColor.yellow.cgColor
        button.layer.borderWidth = 1.5
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPurple
        navigationItem.title = "Third VC"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Edit", style: .plain, target: self, action: #selector(editTapped))
        self.navigationItem.largeTitleDisplayMode = .never
        view.addSubview(myButton)
        myButton.addTarget(self, action: #selector(didTapBtn), for: .touchUpInside)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    @objc func editTapped() {
        print("Edit Tapped")
    }

    @objc private func didTapBtn() {
        let vc = UINavigationController(rootViewController: FourthVC() )
        vc.altSetupNavBarColor()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
        
    }

}
