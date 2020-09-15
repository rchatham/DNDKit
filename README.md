# DNDKit
A Data Sources and Delegate framework.

Stop conforming to DataSources and Delegates. Use a DataModel instead!

```swift
import Foundation

final class TableViewController: UITableViewController {

    var dataModel: TableDataModel!

    override func viewDidLoad() {
        super.viewDidLoad()

        dataModel = TableDataModel(tableView: tableView)

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
    func configure(with text: String) {
        textLabel?.text = text
    }
}
```

### Installation

#### [Cocoapods](https://cocoapods.org/pods/DNDKit)

`pod 'DNDKit'`


