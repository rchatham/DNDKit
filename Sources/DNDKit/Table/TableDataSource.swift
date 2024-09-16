//
//  TableViewDataSource.swift
//  hermes-speak
//
//  Created by Reid Chatham on 10/18/18.
//  Copyright © 2018 Reid Chatham. All rights reserved.
//

import UIKit

public final class TableDataSource: NSObject, TableDataSourceType {
    public init(tableView: UITableView) {
        self.tableView = tableView
        super.init()
        self.tableView.dataSource = self
    }

    public let tableView: UITableView
    public var sections: [TableSection] = []
    public var registry: Set<String> = []
    
    public func numberOfSections(in tableView: UITableView) -> Int {
        return numberOfSections()
    }

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberOfCellsInSection(section)
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return cellForRowAt(indexPath)
    }

    /// Section Header
    public func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[safe: section]?.header
    }

    /// Section Footer
    public func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return sections[safe: section]?.footer
    }

    // Needs work
//    public func tableView(_ tableView: UITableView, sectionForSectionIndexTitle title: String, at index: Int) -> Int {
//        return 0
//    }

    public func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return sections[indexPath.section].cells[indexPath.row].canMoveRow
    }

    public func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {

    }

    public func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return sections[indexPath.section].cells[indexPath.row].canEditRow
    }

    public func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        switch editingStyle {
        case .delete: fallthrough
        case .insert: fallthrough
        case .none: break
        @unknown default: fatalError()
        }
    }
}
