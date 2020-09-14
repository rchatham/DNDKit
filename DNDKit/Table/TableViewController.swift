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

    open func cell(with text: String, editActions: [UITableViewRowAction]? = nil) -> TableCell {
        return cell(with: UITableViewCell.DataModel(text: text), editActions: editActions)
    }

    open func cell(with dataModel: UITableViewCell.DataModel, editActions: [UITableViewRowAction]? = nil) -> TableCell {
        return TableCell(cell: TableViewCell.self, dataModel: dataModel, editActions: editActions)
    }

    open func section(header: String? = nil, cells: [TableCell] = [], footer: String? = nil) -> TableSection {
        return TableSection(header: header, cells: cells, footer: footer)
    }

    open func action(style: UITableViewRowAction.Style = .normal, title: String, color: UIColor? = nil, effect: UIVisualEffect? = nil, selection: @escaping (UITableViewRowAction, IndexPath) -> Void) -> UITableViewRowAction {
        let action = UITableViewRowAction(style: style, title: title, handler: selection)
        action.backgroundColor = color
        action.backgroundEffect = effect
        return action
    }
}
