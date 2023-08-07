//
//  SecondVC.swift
//  NavigationControllerWithCode
//
//  Created by DA MAC M1 157 on 2023/08/06.
//

import UIKit

class SecondVC: UIViewController {
    
    private let myButton: UIButton = {
        let  button = UIButton()
        button.setTitle("Go to Nav Controller", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(UIColor.black, for: UIControl.State.normal)
        button.frame = CGRect(x: 100, y: 300, width: 200, height: 55)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        view.addSubview(myButton)
        myButton.addTarget(self, action: #selector(didTapBtn), for: .touchUpInside)
    }


    @objc private func didTapBtn() {
        let vc = UINavigationController(rootViewController: ThirdVC() )
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
        
    }
}
