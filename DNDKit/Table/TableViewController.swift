//
//  TableViewController.swift
//  DNDKit
//
//  Created by Reid Chatham on 12/6/18.
//  Copyright © 2018 Reid Chatham. All rights reserved.
//

import UIKit

open class TableViewController: UITableViewController {

    open var dataModel: TableDataModel!

    open override func viewDidLoad() {
        super.viewDidLoad()

        dataModel = TableDataModel(tableView: tableView)
    }
}
