//
//  TableViewDataSource.swift
//  hermes-speak
//
//  Created by Reid Chatham on 10/18/18.
//  Copyright © 2018 Reid Chatham. All rights reserved.
//

import UIKit

final class TableDataSource: NSObject, TableDataSourceType {
    init(tableView: UITableView) {
        self.tableView = tableView
        super.init()
        self.tableView.dataSource = self
    }

    let tableView: UITableView
    var sections: [TableSection] = []
    var registry: Set<String> = []
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return numberOfSections()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberOfCellsInSection(section)
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return cellForRowAt(indexPath)
    }
}
