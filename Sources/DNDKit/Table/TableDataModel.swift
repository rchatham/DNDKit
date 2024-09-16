//
//  TableViewDataModel.swift
//  CoordinatorType
//
//  Created by Reid Chatham on 10/24/18.
//  Copyright © 2018 Reid Chatham. All rights reserved.
//

#if os(iOS)
import UIKit

public struct TableDataModel: TableDataModelType {
    public init(tableView: UITableView) {
        dataSource = TableDataSource(tableView: tableView)
        delegate = TableDelegate(dataSource: dataSource)
    }

    public var tableView: UITableView {
        return dataSource.tableView
    }

    public var dataSource: TableDataSource {
        didSet {
            delegate = TableDelegate(dataSource: dataSource)
        }
    }
    public private(set) var delegate: TableDelegate
}

#endif
