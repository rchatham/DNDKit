//
//  CollectionDataSource.swift
//  CoordinatorType
//
//  Created by Reid Chatham on 11/13/18.
//  Copyright © 2018 Reid Chatham. All rights reserved.
//

#if os(iOS)
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

    public func collectionView(_ collectionView: UICollectionView, canMoveItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    public func collectionView(_ collectionView: UICollectionView, moveItemAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {

    }

    public func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
        case UICollectionView.elementKindSectionHeader: return UICollectionReusableView()
        case UICollectionView.elementKindSectionFooter: return UICollectionReusableView()
        default: return UICollectionReusableView()
        }
    }

//    public func collectionView(_ collectionView: UICollectionView, indexPathForIndexTitle title: String, at index: Int) -> IndexPath {
//
//    }
}
#endif
