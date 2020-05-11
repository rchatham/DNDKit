//
//  TableViewDataModel.swift
//  hermes-speak
//
//  Created by Reid Chatham on 10/24/18.
//  Copyright © 2018 Reid Chatham. All rights reserved.
//

import UIKit

struct TableDataModel: TableDataModelType {
    init(tableView: UITableView) {
        dataSource = TableDataSource(tableView: tableView)
        delegate = TableDelegate(dataSource: dataSource)
    }

    var tableView: UITableView {
        return dataSource.tableView
    }

    var dataSource: TableDataSource {
        didSet {
            delegate = TableDelegate(dataSource: dataSource)
        }
    }
    private(set) var delegate: TableDelegate
}
