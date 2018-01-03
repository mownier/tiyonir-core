//
//  WindowWaypoint.swift
//  TiyoNirCore
//
//  Created by Mounir Ybanez on 1/3/18.
//  Copyright © 2018 Nir. All rights reserved.
//

import UIKit

public protocol WindowWaypoint: class {
    
    func withWindow(_ window: UIWindow?) -> WindowWaypoint
    func withScene(_ scene: UIViewController) -> RootWaypoint
}

public class WindowWaypointSource: WindowWaypoint, RootWaypoint {
    
    weak var scene: UIViewController?
    var window: UIWindow!
    
    public init() {
    }
    
    public func makeRoot() -> Bool {
        guard scene != nil, window != nil, window.isKeyWindow else {
            return false
        }
        
        window.rootViewController = scene
        scene = nil
        window = nil
        return true
    }
    
    public func withWindow(_ aWindow: UIWindow?) -> WindowWaypoint {
        window = aWindow
        return self
    }
    
    public func withScene(_ aScene: UIViewController) -> RootWaypoint {
        scene = aScene
        return self
    }
}

