//
//  CollectionSection.swift
//  CoordinatorType
//
//  Created by Reid Chatham on 11/13/18.
//  Copyright © 2018 Reid Chatham. All rights reserved.
//

#if os(iOS)
import Foundation

public struct CollectionSection: CollectionSectionType {
    public var cells: [CollectionCell] = []
    public init() {}
}

#endif
