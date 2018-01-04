//
//  NavigationControllerTheme.swift
//  TiyoNirCore
//
//  Created by Mounir Ybanez on 1/3/18.
//  Copyright © 2018 Nir. All rights reserved.
//

import UIKit

public protocol NavigationControllerTheme: class {
    
    var shadowImage: UIImage? { get }
    var bgImage: UIImage? { get }
    
    var isTranslucent: Bool { get }
    
    var tintColor: UIColor? { get }
    
    var barTintColor: UIColor? { get }
    var barTitleFont: UIFont? { get }
    var barTitleTextColor: UIColor? { get }
    
    var barStyle: UIBarStyle { get }
}

public extension UINavigationController {
    
    public class Theme: NavigationControllerTheme {
        
        public var shadowImage: UIImage?
        public var bgImage: UIImage?
        
        public var isTranslucent: Bool
        
        public var tintColor: UIColor?
        
        public var barTintColor: UIColor?
        public var barTitleFont: UIFont?
        public var barTitleTextColor: UIColor?
        
        public var barStyle: UIBarStyle
        
        public init() {
            self.isTranslucent = false
            self.barStyle = .default
        }
    }
}

