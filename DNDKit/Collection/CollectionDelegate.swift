//
//  CollectionDelegate.swift
//  hermes-speak
//
//  Created by Reid Chatham on 11/13/18.
//  Copyright © 2018 Reid Chatham. All rights reserved.
//

import UIKit

public final class CollectionDelegate: NSObject, CollectionDelegateType {
    public init(dataSource: CollectionDataSource) {
        self.dataSource = dataSource
        super.init()
        dataSource.collectionView.delegate = self
    }

    public let dataSource: CollectionDataSource

    public func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        didSelectCell(at: indexPath)
    }
}
