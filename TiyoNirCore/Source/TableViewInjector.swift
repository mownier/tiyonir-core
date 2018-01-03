//
//  TableViewInjector.swift
//  TiyoNirCore
//
//  Created by Mounir Ybanez on 1/3/18.
//  Copyright © 2018 Nir. All rights reserved.
//

import UIKit

public protocol TableViewInjectable: class {
    
    func injectTableView(_ tableView: UITableView)
}

public class TableViewInjector {
    
    func injectTableView(_ tableView: UITableView, using injectable: TableViewInjectable) {
        injectable.injectTableView(tableView)
    }
}
