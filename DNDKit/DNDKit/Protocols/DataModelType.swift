//
//  DataModelType.swift
//  hermes-speak
//
//  Created by Reid Chatham on 10/24/18.
//  Copyright © 2018 Reid Chatham. All rights reserved.
//

import UIKit

protocol DataModelType {
    associatedtype Delegate: DelegateType

    var parentView: Delegate.DataSource.Section.Cell.ParentView { get }
    var dataSource: Delegate.DataSource { get set }
    var delegate: Delegate { get }

    mutating func append(_ cell: Delegate.DataSource.Section.Cell)
    mutating func insert(_ cell: Delegate.DataSource.Section.Cell, at indexPath: IndexPath)
    mutating func replace(_ cell: Delegate.DataSource.Section.Cell, at indexPath: IndexPath)
    mutating func append(_ section: Delegate.DataSource.Section)
    mutating func insert(_ section: Delegate.DataSource.Section, at index: Int)
    mutating func replace(_ section: Delegate.DataSource.Section, at index: Int)
    mutating func removeCell(at indexPath: IndexPath)
    mutating func removeSection(at index: Int)
}

extension DataModelType {
    mutating func append(_ cell: Delegate.DataSource.Section.Cell) {
        dataSource.append(cell)
    }

    mutating func insert(_ cell: Delegate.DataSource.Section.Cell, at indexPath: IndexPath) {
        dataSource.insert(cell, at: indexPath)
    }

    mutating func replace(_ cell: Delegate.DataSource.Section.Cell, at indexPath: IndexPath) {
        dataSource.replace(cell, at: indexPath)
    }

    mutating func append(_ section: Delegate.DataSource.Section) {
        dataSource.append(section)
    }

    mutating func insert(_ section: Delegate.DataSource.Section, at index: Int) {
        dataSource.insert(section, at: index)
    }

    mutating func replace(_ section: Delegate.DataSource.Section, at index: Int) {
        dataSource.replace(section, at: index)
    }

    mutating func removeCell(at indexPath: IndexPath) {
        dataSource.removeCell(at: indexPath)
    }

    mutating func removeSection(at index: Int) {
        dataSource.removeSection(at: index)
    }
}
