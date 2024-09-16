//
//  TableViewDelegate.swift
//  hermes-speak
//
//  Created by Reid Chatham on 10/24/18.
//  Copyright © 2018 Reid Chatham. All rights reserved.
//

import UIKit

public final class TableDelegate: NSObject, TableDelegateType {
    public init(dataSource: TableDataSource) {
        self.dataSource = dataSource
        super.init()
        dataSource.tableView.delegate = self
    }

    public var sections: [TableSection] {
        return dataSource.sections
    }

    public var tableView: UITableView {
        return dataSource.tableView
    }

    public let dataSource: TableDataSource

//    public func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? { return indexPath }
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) { didSelectCell(at: indexPath) }
//    public func tableView(_ tableView: UITableView, willDeselectRowAt indexPath: IndexPath) -> IndexPath? { return indexPath }
//    public func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {}

//    public func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool { return false }
//    public func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) {}
//    public func tableView(_ tableView: UITableView, didUnhighlightRowAt indexPath: IndexPath) {}

//    public func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool { return false }
//    public func tableView(_ tableView: UITableView, willBeginEditingRowAt indexPath: IndexPath) {}
//    public func tableView(_ tableView: UITableView, didEndEditingRowAt indexPath: IndexPath?) {}

//    public func tableView(_ tableView: UITableView, canFocusRowAt indexPath: IndexPath) -> Bool { return false }
//    public func tableView(_ tableView: UITableView, shouldUpdateFocusIn context: UITableViewFocusUpdateContext) -> Bool { return false }
//    public func tableView(_ tableView: UITableView, didUpdateFocusIn context: UITableViewFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {}

//    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat { return UITableView.automaticDimension }
//    public func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat { return 40.0 }
//    public func tableView(_ tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat { return 20.0 }
//    public func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat { return 20.0 }

//    public func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? { return nil }
//    public func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? { return nil }
//    public func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat { return 20.0 }
//    public func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat { return 20.0 }

//    public func tableView(_ tableView: UITableView, shouldBeginMultipleSelectionInteractionAt indexPath: IndexPath) -> Bool { return false }
//    public func tableView(_ tableView: UITableView, didBeginMultipleSelectionInteractionAt indexPath: IndexPath) {}
//    public func tableViewDidEndMultipleSelectionInteraction(_ tableView: UITableView) {}

//    public func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? { return nil }
//    public func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? { return nil }

//    public func tableView(_ tableView: UITableView, shouldShowMenuForRowAt indexPath: IndexPath) -> Bool { return true }
//    public func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {}

    public func tableView(_ tableView: UITableView, indentationLevelForRowAt indexPath: IndexPath) -> Int { return tableView.cellForRow(at: indexPath)?.indentationLevel ?? 0 }

    public func tableView(_ tableView: UITableView, targetIndexPathForMoveFromRowAt sourceIndexPath: IndexPath, toProposedIndexPath proposedDestinationIndexPath: IndexPath) -> IndexPath { return proposedDestinationIndexPath }

//    public func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {}
//    public func tableView(_ tableView: UITableView, didEndDisplaying cell: UITableViewCell, forRowAt indexPath: IndexPath) {}

//    public func tableView(_ tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int) {}
//    public func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {}
//    public func tableView(_ tableView: UITableView, didEndDisplayingFooterView view: UIView, forSection section: Int) {}
//    public func tableView(_ tableView: UITableView, didEndDisplayingHeaderView view: UIView, forSection section: Int) {}

//    public func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle { return .none }

//    public func tableView(_ tableView: UITableView, canPerformAction action: Selector, forRowAt indexPath: IndexPath, withSender sender: Any?) -> Bool { return true }
//    public func tableView(_ tableView: UITableView, performAction action: Selector, forRowAt indexPath: IndexPath, withSender sender: Any?) {}

    public func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        return sections[indexPath.section].cells[indexPath.row].editActions
    }

//    public func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? { return nil }

//    public func tableView(_ tableView: UITableView, shouldSpringLoadRowAt indexPath: IndexPath, with context: UISpringLoadedInteractionContext) -> Bool { return true }

//    @available(iOS 13.0, *)
//    public func tableView(_ tableView: UITableView, previewForDismissingContextMenuWithConfiguration configuration: UIContextMenuConfiguration) -> UITargetedPreview? { return nil }
//    @available(iOS 13.0, *)
//    public func tableView(_ tableView: UITableView, contextMenuConfigurationForRowAt indexPath: IndexPath, point: CGPoint) -> UIContextMenuConfiguration? { return nil }
//    @available(iOS 13.0, *)
//    public func tableView(_ tableView: UITableView, willPerformPreviewActionForMenuWith configuration: UIContextMenuConfiguration, animator: UIContextMenuInteractionCommitAnimating) {}
//    @available(iOS 13.0, *)
//    public func tableView(_ tableView: UITableView, previewForHighlightingContextMenuWithConfiguration configuration: UIContextMenuConfiguration) -> UITargetedPreview? { return nil }
}
