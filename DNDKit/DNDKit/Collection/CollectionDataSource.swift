//
//  CollectionDataSource.swift
//  hermes-speak
//
//  Created by Reid Chatham on 11/13/18.
//  Copyright © 2018 Reid Chatham. All rights reserved.
//

import UIKit

final class CollectionDataSource: NSObject, CollectionDataSourceType {
    init(collectionView: UICollectionView) {
        self.collectionView = collectionView
        super.init()
        self.collectionView.dataSource = self
    }

    let collectionView: UICollectionView
    var sections: [CollectionSection] = []
    var registry: Set<String> = []

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return numberOfSections()
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return numberOfCellsInSection(section)
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return cellForRowAt(indexPath)
    }
}
