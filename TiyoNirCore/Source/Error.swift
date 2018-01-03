//
//  Error.swift
//  TiyoNirCore
//
//  Created by Mounir Ybanez on 1/3/18.
//  Copyright © 2018 Nir. All rights reserved.
//

public struct Error: Swift.Error {
    
    public let message: String
    
    public init(_ message: String) {
        self.message = message
    }
}
