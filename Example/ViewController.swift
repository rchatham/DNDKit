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

    open override func viewDidLoad() {
        super.viewDidLoad()

        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { (timer) in
            self.dataModel.append(self.cell(with: "What's up?", editActions: [self.action(title: "Test", selection: { (action, indexPath) in

            })]))
        }
        Timer.scheduledTimer(withTimeInterval: 2.0, repeats: false) { (timer) in
            self.dataModel.append(self.cell(with: "Not much! What's up with you?"))
        }
        Timer.scheduledTimer(withTimeInterval: 3.0, repeats: false) { (timer) in
            self.dataModel.append(self.cell(with: "Chillingggg..."))
        }
        Timer.scheduledTimer(withTimeInterval: 4.0, repeats: false) { (timer) in
            self.dataModel.append(self.cell(with: "On my way man!"))
        }
        Timer.scheduledTimer(withTimeInterval: 5.0, repeats: false) { (timer) in
            self.dataModel.append(TableSection(header: "hellllooooo"))
        }
        Timer.scheduledTimer(withTimeInterval: 6.0, repeats: false) { (timer) in
            self.dataModel.append(self.cell(with: "Cell in a new section"))
        }
    }
}
