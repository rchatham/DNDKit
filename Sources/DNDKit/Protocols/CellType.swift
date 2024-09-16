//
//  CellType.swift
//  CoordinatorType
//
//  Created by Reid Chatham on 10/19/18.
//  Copyright © 2018 Reid Chatham. All rights reserved.
//

#if os(iOS)
import UIKit
#elseif os(macOS)
import Cocoa
#endif

public protocol CellType {
#if os(iOS)
    associatedtype CellView: UIView
    associatedtype ParentView: UIView
#elseif os(macOS)
    associatedtype CellView: NSView
    associatedtype ParentView: NSView
#endif

//    init<Cell: ConfigurableCell, DataObject>
//        (cell: Cell.Type,
//        dataModel: DataObject,
//        reuseIdentifier: String?,
//        didSelectCell: @escaping () -> Void)
//        where Cell: CellView, DataObject == Cell.DataObject

    var reuseIdentifier: String { get }
    var dequeue: (ParentView, IndexPath) -> CellView { get }
    var configure: (CellView) -> Void { get }
    var register: (ParentView) -> Void { get }
    var didSelectCell: (ParentView) -> Void { get }
}

public extension CellType {
    var reuseIdentifier: String {
        return String(describing: CellView.self)
    }
}

