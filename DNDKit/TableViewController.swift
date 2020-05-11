//
//  TableViewController.swift
//  DNDKit
//
//  Created by Reid Chatham on 12/6/18.
//  Copyright © 2018 Reid Chatham. All rights reserved.
//

//import Foundation
//
//final class TableViewController: UITableViewController {
//
//    var dataModel: TableDataModel!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        dataModel = TableDataModel(tableView: tableView)
//
//        dataModel.append(cell(with: "What's up?"))
//        dataModel.append(cell(with: "Not much! What's up with you?"))
//        dataModel.append(cell(with: "Chillingggg..."))
//        dataModel.append(cell(with: "On my way man!"))
//    }
//
//
//    func cell(with text: String) -> TableCell {
//        return TableCell(cell: UITableViewCell.self, dataModel: text)
//    }
//}
//
//extension UITableViewCell: ConfigurableCell {
//    func configure(with text: String) {
//        textLabel?.text = text
//    }
//}
