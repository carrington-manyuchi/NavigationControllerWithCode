//
//  AltNavAppearance.swift
//  NavigationControllerWithCode
//
//  Created by DA MAC M1 157 on 2023/08/07.
//

import UIKit

extension UINavigationController {
    
    func altSetupNavBarColor() {
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        
        appearance.backgroundColor = .systemGray5
        appearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.blue]
        appearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.blue]
        
        self.navigationBar.standardAppearance = appearance
        self.navigationBar.scrollEdgeAppearance = appearance
        self.navigationBar.compactAppearance = appearance
        
        self.navigationBar.tintColor = .blue
        UIBarButtonItem.appearance().tintColor = .blue
        
    }
}
