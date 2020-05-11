//
//  CollectionDataSource.swift
//  hermes-speak
//
//  Created by Reid Chatham on 11/13/18.
//  Copyright © 2018 Reid Chatham. All rights reserved.
//

import UIKit

public final class CollectionDataSource: NSObject, CollectionDataSourceType {
    public init(collectionView: UICollectionView) {
        self.collectionView = collectionView
        super.init()
        self.collectionView.dataSource = self
    }

    public let collectionView: UICollectionView
    public var sections: [CollectionSection] = []
    public var registry: Set<String> = []

    public func numberOfSections(in collectionView: UICollectionView) -> Int {
        return numberOfSections()
    }

    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return numberOfCellsInSection(section)
    }

    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return cellForRowAt(indexPath)
    }
}
