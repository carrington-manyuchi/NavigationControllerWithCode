//
//  ViewController.swift
//  NavigationControllerWithCode
//
//  Created by DA MAC M1 157 on 2023/08/06.
//

import UIKit

class ViewController: UIViewController {
    
    private let myButton: UIButton = {
        let  button = UIButton()
        button.setTitle("Push to Second VC", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(UIColor.black, for: UIControl.State.normal)
        button.frame = CGRect(x: 100, y: 300, width: 200, height: 55)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.systemBlue
        navigationItem.title = "Home"
        
        view.addSubview(myButton)
        myButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    
    @objc  func didTapButton() {
        let vc = SecondVC()
        navigationController?.pushViewController(vc, animated: true)
//        vc.modalPresentationStyle = .fullScreen
//        present(vc, animated: true)
    }


}

