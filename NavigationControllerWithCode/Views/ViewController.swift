//
//  ViewController.swift
//  NavigationControllerWithCode
//
//  Created by DA MAC M1 157 on 2023/08/06.
//  This tutorial is about knowing how to make your own custom navigation controlllers. Customising colors, images and text etc.

import UIKit

class ViewController: UIViewController {
    
    private let myButton: UIButton = {
        let  button = UIButton()
        button.setTitle("Push to Second VC", for: .normal)
        button.backgroundColor = .systemRed
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
        view.backgroundColor = UIColor.systemMint
        navigationItem.title = "Home"
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "person.3.fill"), style: .plain, target: self, action: #selector(didTouchPerson))
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "person.3.fill"), style: .plain, target: self, action: #selector(didTouchEmployees))
        self.navigationItem.largeTitleDisplayMode = .never
        view.addSubview(myButton)
        myButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    
    @objc func didTouchEmployees() {
        print("Emplyees tab did touch")
    }
    
    
    @objc func didTouchPerson() {
        print("Person 3 image tapped")
    }
    
    @objc  func didTapButton() {
        let vc = SecondVC()
        navigationController?.pushViewController(vc, animated: true)
//        vc.modalPresentationStyle = .fullScreen
//        present(vc, animated: true)
    }


}

