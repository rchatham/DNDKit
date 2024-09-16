//
//  ConfigurableCell.swift
//  CoordinatorType
//
//  Created by Reid Chatham on 10/18/18.
//  Copyright © 2018 Reid Chatham. All rights reserved.
//

import Foundation

public protocol ConfigurableCell {
    associatedtype DataObject
    func configure(with dataModel: DataObject)
}
