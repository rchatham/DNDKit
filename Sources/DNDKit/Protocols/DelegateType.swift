//
//  DelegateType.swift
//  hermes-speak
//
//  Created by Reid Chatham on 10/24/18.
//  Copyright © 2018 Reid Chatham. All rights reserved.
//

import UIKit

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
        sections[safe: indexPath.section]?.cells[safe: indexPath.row]?.didSelectCell(dataSource.parentView)
    }
}
