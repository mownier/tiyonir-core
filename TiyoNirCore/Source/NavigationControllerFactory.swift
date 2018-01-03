//
//  NavigationControllerFactory.swift
//  TiyoNirCore
//
//  Created by Mounir Ybanez on 1/3/18.
//  Copyright © 2018 Nir. All rights reserved.
//

import UIKit

public protocol NavigationControllerFactory: class {
    
    func withTheme(_ theme: NavigationControllerTheme) -> NavigationControllerFactory
    func withRoot(_ root: UIViewController) -> NavigationControllerFactory
    func build() -> UINavigationController
}

public extension UINavigationController {
    
    public class Factory: NavigationControllerFactory {
        
        var theme: NavigationControllerTheme
        var root: UIViewController?
        
        public init() {
            self.theme = Theme()
        }
        
        public func withTheme(_ aTheme: NavigationControllerTheme) -> NavigationControllerFactory {
            theme = aTheme
            return self
        }
        
        public func withRoot(_ aRoot: UIViewController) -> NavigationControllerFactory {
            root = aRoot
            return self
        }
        
        public func build() -> UINavigationController {
            var nav: UINavigationController = UINavigationController()
            if root != nil {
                nav = UINavigationController(rootViewController: root!)
            }
            nav.navigationBar.isTranslucent = theme.isTranslucent
            nav.navigationBar.barStyle = theme.barStyle
            
            if theme.shadowImage != nil {
                nav.navigationBar.shadowImage = theme.shadowImage
            }
            
            if theme.bgImage != nil {
                nav.navigationBar.setBackgroundImage(theme.bgImage, for: .default)
            }
            
            if theme.barTintColor != nil {
                nav.navigationBar.barTintColor = theme.barTintColor
            }
            
            if theme.tintColor != nil {
                nav.navigationBar.tintColor = theme.tintColor
            }
            
            var textAttribs: [NSAttributedStringKey: Any] = [:]
            
            if theme.barTitleFont != nil {
                textAttribs[NSAttributedStringKey.font] = theme.barTitleFont
            }
            
            if theme.barTitleTextColor != nil {
                textAttribs[NSAttributedStringKey.foregroundColor] = theme.barTitleTextColor
            }
            
            if !textAttribs.isEmpty {
                nav.navigationBar.titleTextAttributes = textAttribs
            }
            
            return nav
        }
    }
}
