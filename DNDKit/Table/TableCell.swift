//
//  TableCell.swift
//  hermes-speak
//
//  Created by Reid Chatham on 10/18/18.
//  Copyright © 2018 Reid Chatham. All rights reserved.
//

import UIKit

public struct TableCell: TableCellType {
    public init<Cell: UITableViewCell & ConfigurableCell>
        (cell: Cell.Type,
         dataModel: Cell.DataObject,
         reuseIdentifier: String? = nil,
         didSelectCell: @escaping (UITableView) -> Void = {_ in},
         canMoveRow: Bool = false,
         canEditRow: Bool = false,
         editActions: [UITableViewRowAction]? = nil) {

            let reuseIdentifier = reuseIdentifier ?? String(describing: Cell.self)
            self.reuseIdentifier = reuseIdentifier
            create = { Cell() }
            dequeue = { return $0.dequeueReusableCell(withIdentifier: reuseIdentifier, for: $1) }
            configure = { ($0 as? Cell)?.configure(with: dataModel) }
            register = { $0.register(Cell.self, forCellReuseIdentifier: reuseIdentifier) }
            getData = { return dataModel }
            self.didSelectCell = didSelectCell
            self.canMoveRow = canMoveRow
            self.editActions = editActions
    }

    public let reuseIdentifier: String
    public let create: () -> UITableViewCell
    public let dequeue: (UITableView, IndexPath) -> UITableViewCell
    public let configure: (UITableViewCell) -> Void
    public let register: (UITableView) -> Void
    public let getData: () -> Any
    public let didSelectCell: (UITableView) -> Void
    public let canMoveRow: Bool
    public let editActions: [UITableViewRowAction]?
    var canEditRow: Bool { return (editActions?.count ?? 0) > 0 }
}
