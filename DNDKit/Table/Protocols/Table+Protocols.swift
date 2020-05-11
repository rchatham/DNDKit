//
//  Table+Protocols.swift
//  hermes-speak
//
//  Created by Reid Chatham on 11/13/18.
//  Copyright © 2018 Reid Chatham. All rights reserved.
//

import UIKit

public protocol TableCellType: CellType where CellView: UITableViewCell, ParentView: UITableView {}

public protocol TableSectionType: SectionType where Cell: TableCellType {}

/// TableDataSourceType
public protocol TableDataSourceType: DataSourceType, UITableViewDataSource where Section: TableSectionType {
    var tableView: UITableView { get }
}

public extension TableDataSourceType {
    var parentView: UITableView {
        return tableView
    }

    var update: (Update) -> Void {
        return { [weak self] update in
            self?.parentView.beginUpdates()
            switch update {
            case .cell(let cell):
                switch cell {
                case .insertion(let indexPath):
                    self?.parentView.insertRows(at: [indexPath], with: .fade)
                case .modification(let indexPath):
                    self?.parentView.reloadRows(at: [indexPath], with: .fade)
                case .deletion(let indexPath):
                    self?.parentView.deleteRows(at: [indexPath], with: .fade)
                }
            case .section(let section):
                switch section {
                case .insertion(let index):
                    self?.parentView.insertSections([index], with: .fade)
                case .modification(let index):
                    self?.parentView.reloadSections([index], with: .fade)
                case .deletion(let index):
                    self?.parentView.deleteSections([index], with: .fade)
                }
            }
            self?.parentView.endUpdates()
        }
    }
}

public protocol TableDelegateType: DelegateType, UITableViewDelegate where DataSource: TableDataSourceType {}

public protocol TableDataModelType: DataModelType where Delegate: TableDelegateType {
    var tableView: UITableView { get }
}

public extension TableDataModelType {
    var parentView: UITableView {
        return tableView
    }
}
