//
//  TableViewDelegate.swift
//  hermes-speak
//
//  Created by Reid Chatham on 10/24/18.
//  Copyright © 2018 Reid Chatham. All rights reserved.
//

import UIKit

public final class TableDelegate: NSObject, TableDelegateType {
    public init(dataSource: TableDataSource) {
        self.dataSource = dataSource
        super.init()
        dataSource.tableView.delegate = self
    }

    public let dataSource: TableDataSource

    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        didSelectCell(at: indexPath)
    }
}
