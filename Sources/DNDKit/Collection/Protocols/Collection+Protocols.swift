//
//  Collection+Protocols.swift
//  hermes-speak
//
//  Created by Reid Chatham on 11/13/18.
//  Copyright © 2018 Reid Chatham. All rights reserved.
//

import UIKit

public protocol CollectionCellType: CellType where CellView: UICollectionViewCell, ParentView: UICollectionView {}

public protocol CollectionSectionType: SectionType where Cell: CollectionCellType {}

/// CollectionDataSourceType
public protocol CollectionDataSourceType: DataSourceType, UICollectionViewDataSource where Section: CollectionSectionType {
    var collectionView: UICollectionView { get }
}

public extension CollectionDataSourceType {
    var parentView: UICollectionView {
        return collectionView
    }

    var update: (Update) -> Void {
        return { [weak self] update in
            switch update {
            case .cell(let cell):
                switch cell {
                case .insertion(let indexPath):
                    self?.parentView.insertItems(at: [indexPath])
                case .modification(let indexPath):
                    self?.parentView.reloadItems(at: [indexPath])
                case .deletion(let indexPath):
                    self?.parentView.deleteItems(at: [indexPath])
                }
            case .section(let section):
                switch section {
                case .insertion(let index):
                    self?.parentView.insertSections([index])
                case .modification(let index):
                    self?.parentView.reloadSections([index])
                case .deletion(let index):
                    self?.parentView.deleteSections([index])
                }
            case .reload:
                self?.parentView.reloadData()
            }
        }
    }
}

public protocol CollectionDelegateType: DelegateType, UICollectionViewDelegate where DataSource: CollectionDataSourceType {}

public protocol CollectionDataModelType: DataModelType where Delegate: CollectionDelegateType {
    var collectionView: UICollectionView { get }
}

public extension CollectionDataModelType {
    var parentView: UICollectionView {
        return collectionView
    }
}
