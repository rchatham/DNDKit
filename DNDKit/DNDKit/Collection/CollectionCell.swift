//
//  CollectionCell.swift
//  hermes-speak
//
//  Created by Reid Chatham on 11/13/18.
//  Copyright © 2018 Reid Chatham. All rights reserved.
//

import UIKit

struct CollectionCell: CollectionCellType {
    init<Cell: UICollectionViewCell, DataObject>
        (cell: Cell.Type,
         dataModel: DataObject,
         reuseIdentifier: String? = nil,
         didSelectCell: @escaping () -> Void = {})
        where Cell: ConfigurableCell, DataObject == Cell.DataObject {

            let reuseIdentifier = reuseIdentifier ?? String(describing: Cell.self)
            self.reuseIdentifier = reuseIdentifier
            dequeue = { return $0.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: $1) }
            configure = { ($0 as? Cell)?.configure(with: dataModel) }
            register = { $0.register(Cell.self, forCellWithReuseIdentifier: reuseIdentifier) }
            self.didSelectCell = didSelectCell
    }

    let reuseIdentifier: String
    let dequeue: (UICollectionView, IndexPath) -> UICollectionViewCell
    let configure: (UICollectionViewCell) -> Void
    let register: (UICollectionView) -> Void
    let didSelectCell: () -> Void
}
