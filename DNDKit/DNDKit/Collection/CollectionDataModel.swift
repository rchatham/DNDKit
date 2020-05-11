//
//  CollectionDataModel.swift
//  hermes-speak
//
//  Created by Reid Chatham on 11/13/18.
//  Copyright © 2018 Reid Chatham. All rights reserved.
//

import UIKit

struct CollectionDataModel: CollectionDataModelType {
    init(collectionView: UICollectionView) {
        dataSource = CollectionDataSource(collectionView: collectionView)
        delegate = CollectionDelegate(dataSource: dataSource)
    }

    var collectionView: UICollectionView {
        return dataSource.collectionView
    }

    var dataSource: CollectionDataSource {
        didSet {
            delegate = CollectionDelegate(dataSource: dataSource)
        }
    }
    private(set) var delegate: CollectionDelegate
}
