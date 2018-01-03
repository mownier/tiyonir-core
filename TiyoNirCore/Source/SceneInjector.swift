//
//  SceneInjector.swift
//  TiyoNirCore
//
//  Created by Mounir Ybanez on 1/3/18.
//  Copyright © 2018 Nir. All rights reserved.
//

import UIKit

public protocol SceneInjectable: class {
    
    func injectScene(_ scene: UIViewController)
}

public class SceneInjector {
    
    func injectScene(_ scene: UIViewController, using injector: SceneInjectable) {
        injector.injectScene(scene)
    }
}
