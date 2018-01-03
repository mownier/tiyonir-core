//
//  PresentWaypoint.swift
//  TiyoNirCore
//
//  Created by Mounir Ybanez on 1/3/18.
//  Copyright © 2018 Nir. All rights reserved.
//

import UIKit

public protocol PresentWaypoint: class {
    
    func withCompletionEntry(_ completion: (() -> Void)?) -> PresentWaypoint
    func withCompletionExit(_ completion: (() -> Void)?) -> PresentWaypoint
    func withAnimatedEntry(_ animated: Bool) -> PresentWaypoint
    func withAnimatedExit(_ animated: Bool) -> PresentWaypoint
    func withScene(_ scene: UIViewController) -> EntryWaypoint
}

public class PresentWaypointSource: PresentWaypoint, EntryWaypoint, ExitWaypoint {
    
    weak var scene: UIViewController?
    var isEntryAnimated: Bool = true
    var isExitAnimated: Bool = true
    var completionEntry: (() -> Void)?
    var completionExit: (() -> Void)?
    
    public init() {
        self.isEntryAnimated = true
        self.isExitAnimated = true
    }
    
    public func enter(from parent: UIViewController) -> Bool {
        guard let scene = scene else {
            return false
        }
        
        parent.present(scene, animated: isEntryAnimated) { [weak self] in
            self?.completionEntry?()
            self?.completionEntry = nil
        }
        
        return true
    }
    
    public func exit() -> Bool {
        guard let scene = scene else {
            return false
        }
        
        scene.dismiss(animated: isExitAnimated) { [weak self] in
            self?.completionExit?()
            self?.completionExit = nil
            self?.scene = nil
        }
        
        return true
    }
    
    public func withCompletionEntry(_ completion: (() -> Void)?) -> PresentWaypoint {
        completionEntry = completion
        return self
    }
    
    public func withCompletionExit(_ completion: (() -> Void)?) -> PresentWaypoint {
        completionExit = completion
        return self
    }
    
    public func withAnimatedEntry(_ animated: Bool) -> PresentWaypoint {
        isEntryAnimated = animated
        return self
    }
    
    public func withAnimatedExit(_ animated: Bool) -> PresentWaypoint {
        isExitAnimated = animated
        return self
    }
    
    public func withScene(_ aScene: UIViewController) -> EntryWaypoint {
        scene = aScene
        return self
    }
}
