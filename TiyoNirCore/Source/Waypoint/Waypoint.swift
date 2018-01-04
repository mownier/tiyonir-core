//
//  Waypoint.swift
//  TiyoNirCore
//
//  Created by Mounir Ybanez on 1/3/18.
//  Copyright © 2018 Nir. All rights reserved.
//

import UIKit

public protocol EntryWaypoint: class {
    
    func enter(from parent: UIViewController) -> Bool
}

public protocol ExitWaypoint: class {
    
    func exit() -> Bool
}

public protocol RootWaypoint: class {
    
    func makeRoot() -> Bool
}
