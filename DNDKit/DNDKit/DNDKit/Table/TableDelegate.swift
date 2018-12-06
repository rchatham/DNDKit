//
//  TableViewDelegate.swift
//  hermes-speak
//
//  Created by Reid Chatham on 10/24/18.
//  Copyright © 2018 Reid Chatham. All rights reserved.
//

import UIKit

final class TableDelegate: NSObject, TableDelegateType {
    init(dataSource: TableDataSource) {
        self.dataSource = dataSource
        super.init()
        dataSource.tableView.delegate = self
    }

    let dataSource: TableDataSource

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        didSelectCell(at: indexPath)
    }
}
