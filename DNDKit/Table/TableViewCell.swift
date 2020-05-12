//
//  TableViewCell.swift
//  DNDKit
//
//  Created by Reid Chatham on 5/11/20.
//  Copyright © 2020 Reid Chatham. All rights reserved.
//

import UIKit

public class TableViewCell: UITableViewCell, ConfigurableCell {
    public func configure(with text: String) {
        textLabel?.text = text
    }
}
