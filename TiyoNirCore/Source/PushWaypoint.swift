//
//  PushWaypoint.swift
//  TiyoNirCore
//
//  Created by Mounir Ybanez on 1/3/18.
//  Copyright © 2018 Nir. All rights reserved.
//

import UIKit

public protocol PushWaypoint: class {
    
    func withAnimatedEntry(_ animated: Bool) -> PushWaypoint
    func withAnimatedExit(_ animated: Bool) -> PushWaypoint
    func withScene(_ scene: UIViewController) -> EntryWaypoint
}

public class PushWaypointSource: PushWaypoint, EntryWaypoint, ExitWaypoint {
    
    weak var scene: UIViewController?
    var isEntryAnimated: Bool = true
    var isExitAnimated: Bool = true
    
    public func enter(from parent: UIViewController) -> Bool {
        guard let scene = scene, !(scene is UINavigationController),
            let nav = parent.navigationController else {
                return false
        }
        
        nav.pushViewController(scene, animated: isEntryAnimated)
        return true
    }
    
    public func exit() -> Bool {
        guard scene != nil, let nav = scene!.navigationController, nav.topViewController == scene else {
            return false
        }
        
        nav.popViewController(animated: isExitAnimated)
        scene = nil
        return true
    }
    
    public func withAnimatedExit(_ animated: Bool) -> PushWaypoint {
        isExitAnimated = animated
        return self
    }
    
    public func withAnimatedEntry(_ animated: Bool) -> PushWaypoint {
        isEntryAnimated = animated
        return self
    }
    
    public func withScene(_ aScene: UIViewController) -> EntryWaypoint {
        scene = aScene
        return self
    }
}
