//
//  DelegateType.swift
//  CoordinatorType
//
//  Created by Reid Chatham on 10/24/18.
//  Copyright © 2018 Reid Chatham. All rights reserved.
//

import Foundation

public protocol DelegateType {
    associatedtype DataSource: DataSourceType

    var dataSource: DataSource { get }
    var sections: [DataSource.Section] { get }

    func didSelectCell(at indexPath: IndexPath)
}

public extension DelegateType {
    var sections: [DataSource.Section] {
        return dataSource.sections
    }

    func didSelectCell(at indexPath: IndexPath) {
        #if os(iOS)
        sections[safe: indexPath.section]?.cells[safe: indexPath.row]?.didSelectCell(dataSource.parentView)
        #elseif os(macOS)
        sections[safe: indexPath.section]?.cells[safe: indexPath.item]?.didSelectCell(dataSource.parentView)
        #endif
    }
}
