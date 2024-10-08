//
//  TableVewSection.swift
//  CoordinatorType
//
//  Created by Reid Chatham on 10/18/18.
//  Copyright © 2018 Reid Chatham. All rights reserved.
//

#if os(iOS)
import Foundation

public struct TableSection: TableSectionType {
    public var header: String? = nil
    public var footer: String? = nil

    public var cells: [TableCell] = []

    public init() {}
    public init(header: String? = nil, cells: [TableCell] = [], footer: String? = nil) {
        self.header = header
        self.cells = cells
        self.footer = footer
    }
}

#endif
