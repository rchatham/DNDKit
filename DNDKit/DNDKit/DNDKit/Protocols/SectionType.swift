//
//  SectionType.swift
//  hermes-speak
//
//  Created by Reid Chatham on 10/19/18.
//  Copyright © 2018 Reid Chatham. All rights reserved.
//

import UIKit

protocol SectionType {
    associatedtype Cell: CellType

    init()

    var cells: [Cell] { get set }
    func register(_ register: (Cell) -> Void)
}

extension SectionType {
    func register(_ register: (Cell) -> Void) {
        cells.forEach(register)
    }

    mutating func append(_ cell: Cell) {
        cells.append(cell)
    }

    mutating func insert(_ cell: Cell, at index: Int) {
        cells.insert(cell, at: index)
    }

    mutating func replace(_ cell: Cell, at index: Int) {
        cells[index] = cell
    }

    mutating func remove(at index: Int) {
        cells.remove(at: index)
    }
}

