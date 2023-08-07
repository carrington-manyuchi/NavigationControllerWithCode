//
//  NavAppearence.swift
//  NavigationControllerWithCode
//
//  Created by DA MAC M1 157 on 2023/08/07.
// How to make my own custom navigation controlllers.
// In this snippet I am goig to add custom colors to the navBAr

import UIKit

extension UINavigationController {
    
    func setupNavBarColor() {
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        
        appearance.backgroundColor = .systemCyan
        appearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.systemBackground]
        appearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.systemBackground]
        
        self.navigationBar.standardAppearance = appearance
        self.navigationBar.scrollEdgeAppearance = appearance
        self.navigationBar.compactAppearance = appearance
        
        self.navigationBar.tintColor = .systemBackground
        UIBarButtonItem.appearance().tintColor = .systemBackground
    }
}
