//
//  ViewController.swift
//  Example
//
//  Created by Reid Chatham on 5/11/20.
//  Copyright © 2020 Reid Chatham. All rights reserved.
//

import UIKit
import DNDKit

class ViewController: TableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        dataModel.append(cell(with: "What's up?"))
        dataModel.append(cell(with: "Not much! What's up with you?"))
        dataModel.append(cell(with: "Chillingggg..."))
        dataModel.append(cell(with: "On my way man!"))
    }

    func cell(with text: String) -> TableCell {
        return TableCell(cell: UITableViewCell.self, dataModel: text)
    }
}

extension UITableViewCell: ConfigurableCell {
    public func configure(with text: String) {
        textLabel?.text = text
    }
}
