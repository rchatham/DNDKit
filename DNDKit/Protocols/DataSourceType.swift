//
//  DataSourceType.swift
//  hermes-speak
//
//  Created by Reid Chatham on 10/19/18.
//  Copyright © 2018 Reid Chatham. All rights reserved.
//

import UIKit

/// DataSourceType
public protocol DataSourceType {
    associatedtype Section: SectionType

    var parentView: Section.Cell.ParentView { get }
    var sections: [Section] { get set }
    var registry: Set<String> { get set }

    var update: (Update) -> Void { get }

    func numberOfSections() -> Int
    func numberOfCellsInSection(_ index: Int) -> Int
    func cellForRowAt(_ indexPath: IndexPath) -> Section.Cell.CellView
}

public extension DataSourceType {
    var sections: [Section] {
        get {
            return sections
        }
        set {
            sections = newValue
            sections.forEach { $0.register { register($0) } }
        }
    }

    var lastIndexPath: IndexPath? {
        let sectionIndex = sections.endIndex - 1
        guard sectionIndex >= 0 else { return nil }
        let cellIndex = sections[sectionIndex].cells.endIndex - 1
        guard cellIndex >= 0 else { return nil }
        return IndexPath(item: cellIndex, section: sectionIndex)
    }

    func numberOfSections() -> Int {
        return sections.count
    }

    func numberOfCellsInSection(_ index: Int) -> Int {
        return sections[safe: index]?.cells.count ?? 0
    }

    func cellForRowAt(_ indexPath: IndexPath) -> Section.Cell.CellView {
        let model = sections[indexPath.section].cells[indexPath.row]
        let cell = model.dequeue(parentView, indexPath)
        model.configure(cell)
        return cell
    }
}

public extension DataSourceType {
    mutating func append(_ cell: Section.Cell) {
        register(cell)
        if sections.isEmpty {
            var section = Section()
            section.append(cell)
            sections.append(section)
        } else {
            sections[lastIndexPath?.section ?? 0].append(cell)
        }
        update(.cell(.insertion(lastIndexPath!)))
    }

    mutating func insert(_ cell: Section.Cell, at indexPath: IndexPath) {
        register(cell)
        sections[safe: indexPath.section]?.insert(cell, at: indexPath.row)
        update(.cell(.insertion(indexPath)))
    }

    mutating func replace(_ cell: Section.Cell, at indexPath: IndexPath) {
        register(cell)
        sections[safe: indexPath.section]?.replace(cell, at: indexPath.row)
        update(.cell(.modification(indexPath)))
    }

    mutating func append(_ section: Section) {
        section.register { register($0) }
        sections.append(section)
        guard let lastIndex = lastIndexPath else { return }
        update(.section(.insertion(lastIndex.section)))
    }

    mutating func insert(_ section: Section, at index: Int) {
        section.register { register($0) }
        sections.insert(section, at: index)
        update(.section(.insertion(index)))
    }

    mutating func replace(_ section: Section, at index: Int) {
        section.register { register($0) }
        sections[index] = section
        update(.section(.modification(index)))
    }

    mutating func removeCell(at indexPath: IndexPath) {
        sections[indexPath.section].remove(at: indexPath.row)
        update(.cell(.deletion(indexPath)))
    }

    mutating func removeSection(at index: Int) {
        sections.remove(at: index)
        update(.section(.deletion(index)))
    }
}

private extension DataSourceType {
    mutating func register(_ cell: Section.Cell) {
        guard !registry.contains(cell.reuseIdentifier) else { return }
        cell.register(parentView)
        registry.insert(cell.reuseIdentifier)
    }
}
