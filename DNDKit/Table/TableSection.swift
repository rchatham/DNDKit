//
//  TableVewSection.swift
//  hermes-speak
//
//  Created by Reid Chatham on 10/18/18.
//  Copyright © 2018 Reid Chatham. All rights reserved.
//

import UIKit

public struct TableSection: TableSectionType {
    public var cells: [TableCell] = []

    public init() {}
    public init(cells: [TableCell]) {
        self.cells = cells
    }
}
