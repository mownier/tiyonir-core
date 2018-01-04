//
//  TableCellFactory.swift
//  TiyoNirCore
//
//  Created by Mounir Ybanez on 1/3/18.
//  Copyright © 2018 Nir. All rights reserved.
//

import UIKit

public protocol TableCellFactory {
    
    func prototype(in section: Int, at row: Int) -> UITableViewCell?
    func build(using tableView: UITableView, with reuseID: String, in section: Int, at row: Int) -> UITableViewCell
}
