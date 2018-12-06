//
//  TableCell.swift
//  hermes-speak
//
//  Created by Reid Chatham on 10/18/18.
//  Copyright © 2018 Reid Chatham. All rights reserved.
//

import UIKit

struct TableCell: TableCellType {
    init<Cell: UITableViewCell, DataObject>
        (cell: Cell.Type,
         dataModel: DataObject,
         reuseIdentifier: String? = nil,
         didSelectCell: @escaping () -> Void = {})
        where Cell: ConfigurableCell, DataObject == Cell.DataObject {

            let reuseIdentifier = reuseIdentifier ?? String(describing: Cell.self)
            self.reuseIdentifier = reuseIdentifier
            dequeue = { return $0.dequeueReusableCell(withIdentifier: reuseIdentifier, for: $1) }
            configure = { ($0 as? Cell)?.configure(with: dataModel) }
            register = { $0.register(Cell.self, forCellReuseIdentifier: reuseIdentifier) }
            self.didSelectCell = didSelectCell
    }

    let reuseIdentifier: String
    let dequeue: (UITableView, IndexPath) -> UITableViewCell
    let configure: (UITableViewCell) -> Void
    let register: (UITableView) -> Void
    let didSelectCell: () -> Void
}
