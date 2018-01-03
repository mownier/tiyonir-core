//
//  Result.swift
//  TiyoNirCore
//
//  Created by Mounir Ybanez on 1/3/18.
//  Copyright © 2018 Nir. All rights reserved.
//

public enum Result<T> {
    
    case ok(T)
    case err(Error)
}
