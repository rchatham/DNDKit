//
//  TableViewDataSource.swift
//  hermes-speak
//
//  Created by Reid Chatham on 10/18/18.
//  Copyright © 2018 Reid Chatham. All rights reserved.
//

import UIKit

public final class TableDataSource: NSObject, TableDataSourceType {
    public init(tableView: UITableView) {
        self.tableView = tableView
        super.init()
        self.tableView.dataSource = self
    }

    public let tableView: UITableView
    public var sections: [TableSection] = []
    public var registry: Set<String> = []
    
    public func numberOfSections(in tableView: UITableView) -> Int {
        return numberOfSections()
    }

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberOfCellsInSection(section)
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return cellForRowAt(indexPath)
    }
}
