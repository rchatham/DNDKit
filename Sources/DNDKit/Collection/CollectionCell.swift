//
//  CollectionCell.swift
//  hermes-speak
//
//  Created by Reid Chatham on 11/13/18.
//  Copyright © 2018 Reid Chatham. All rights reserved.
//

import UIKit

public struct CollectionCell: CollectionCellType {
    public init<Cell: UICollectionViewCell, DataObject>
        (cell: Cell.Type,
         dataModel: DataObject,
         reuseIdentifier: String? = nil,
         didSelectCell: @escaping (UICollectionView) -> Void = {_ in})
        where Cell: ConfigurableCell, DataObject == Cell.DataObject {

            let reuseIdentifier = reuseIdentifier ?? String(describing: Cell.self)
            self.reuseIdentifier = reuseIdentifier
            dequeue = { return $0.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: $1) }
            configure = { ($0 as? Cell)?.configure(with: dataModel) }
            register = { $0.register(Cell.self, forCellWithReuseIdentifier: reuseIdentifier) }
            self.didSelectCell = didSelectCell
    }

    public let reuseIdentifier: String
    public let dequeue: (UICollectionView, IndexPath) -> UICollectionViewCell
    public let configure: (UICollectionViewCell) -> Void
    public let register: (UICollectionView) -> Void
    public let didSelectCell: (UICollectionView) -> Void
}
