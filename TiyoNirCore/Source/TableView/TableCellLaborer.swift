//
//  TableCellLaborer.swift
//  TiyoNirCore
//
//  Created by Mounir Ybanez on 1/3/18.
//  Copyright © 2018 Nir. All rights reserved.
//

import UIKit

public protocol TableCellFactoryLaborer: class {
    
    var prototype: UITableViewCell? { get }
    
    func build(using tableView: UITableView, with reuseID: String) -> UITableViewCell
}
