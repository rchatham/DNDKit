//
//  CollectionDataModel.swift
//  CoordinatorType
//
//  Created by Reid Chatham on 11/13/18.
//  Copyright © 2018 Reid Chatham. All rights reserved.
//

#if os(iOS)
import UIKit

public struct CollectionDataModel: CollectionDataModelType {
    public init(collectionView: UICollectionView) {
        dataSource = CollectionDataSource(collectionView: collectionView)
        delegate = CollectionDelegate(dataSource: dataSource)
    }

    public var collectionView: UICollectionView {
        return dataSource.collectionView
    }

    public var dataSource: CollectionDataSource {
        didSet {
            delegate = CollectionDelegate(dataSource: dataSource)
        }
    }
    public private(set) var delegate: CollectionDelegate
}

#endif
