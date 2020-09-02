//
//  TableViewCell.swift
//  DNDKit
//
//  Created by Reid Chatham on 5/11/20.
//  Copyright © 2020 Reid Chatham. All rights reserved.
//

import UIKit

public class TableViewCell: UITableViewCell, ConfigurableCell {}

extension UITableViewCell {
    public struct DataModel {
        public var text: String?
        public var detailText: String?
        public var accessoryType: UITableViewCell.AccessoryType = .none
        public var accessoryView: UIView?
        public var backgroundView: UIView?
        public var editingAccessoryType: UITableViewCell.AccessoryType = .none
        public var editingAccessoryView: UIView?
        public var focusStyle: UITableViewCell.FocusStyle = .default
        public var imageView: UIImageView?
        public var indentationLevel: Int
        public var indentationWidth: CGFloat
        public var multipleSelectionBackgroundView: UIView?
        public var selectionStyle: UITableViewCell.SelectionStyle
        public var selectedBackgroundView: UIView?
        public var separatorInset: UIEdgeInsets
        public var shouldIndentWhileEditing: Bool
        public var showsReorderControl: Bool
        public var userInteractionEnabledWhileDragging: Bool
        public var accessibilityIdentifier: String?
        public var accessibilityLabel: String?

        public init(text: String? = nil, detailText: String? = nil, accessoryType: UITableViewCell.AccessoryType = .none, accessoryView: UIView? = nil, backgroundView: UIView? = nil, editingAccessoryType: UITableViewCell.AccessoryType = .none, editingAccessoryView: UIView? = nil, focusStyle: UITableViewCell.FocusStyle = .default, imageView: UIImageView? = nil, indentationLevel: Int = 0, indentationWidth: CGFloat = 0.0, multipleSelectionBackgroundView: UIView? = nil, selectionStyle: UITableViewCell.SelectionStyle = .none, selectedBackgroundView: UIView? = nil, separatorInset: UIEdgeInsets = .zero, shouldIndentWhileEditing: Bool = false, showsReorderControl: Bool = false, userInteractionEnabledWhileDragging: Bool = false, accessibilityIdentifier: String? = nil, accessibilityLabel: String? = nil) {
            self.text = text
            self.detailText = detailText
            self.accessoryType = accessoryType
            self.accessoryView = accessoryView
            self.backgroundView = backgroundView
            self.editingAccessoryType = editingAccessoryType
            self.editingAccessoryView = editingAccessoryView
            self.focusStyle = focusStyle
            self.imageView = imageView
            self.indentationLevel = indentationLevel
            self.indentationWidth = indentationWidth
            self.multipleSelectionBackgroundView = multipleSelectionBackgroundView
            self.selectionStyle = selectionStyle
            self.selectedBackgroundView = selectedBackgroundView
            self.separatorInset = separatorInset
            self.shouldIndentWhileEditing = shouldIndentWhileEditing
            self.showsReorderControl = showsReorderControl
            self.userInteractionEnabledWhileDragging = userInteractionEnabledWhileDragging
            self.accessibilityIdentifier = accessibilityIdentifier
            self.accessibilityLabel = accessibilityLabel
        }
    }
}

//public class TableViewCell: UITableViewCell, ConfigurableCell {
extension ConfigurableCell where Self: UITableViewCell {
    public func configure(with data: DataModel) {
        textLabel?.text = data.text
        detailTextLabel?.text = data.detailText
        accessoryType = data.accessoryType
        accessoryView = data.accessoryView
        backgroundView = data.backgroundView
        editingAccessoryType = data.editingAccessoryType
        editingAccessoryView = data.editingAccessoryView
        focusStyle = data.focusStyle
        indentationLevel = data.indentationLevel
        indentationWidth = data.indentationWidth
        multipleSelectionBackgroundView = data.multipleSelectionBackgroundView
        selectionStyle = data.selectionStyle
        selectedBackgroundView = data.selectedBackgroundView
        separatorInset = data.separatorInset
        shouldIndentWhileEditing = data.shouldIndentWhileEditing
        showsReorderControl = data.showsReorderControl
        userInteractionEnabledWhileDragging = data.userInteractionEnabledWhileDragging
        accessibilityIdentifier = data.accessibilityIdentifier
        accessibilityLabel = data.accessibilityIdentifier
    }
}
