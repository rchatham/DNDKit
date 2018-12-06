//
//  Update.swift
//  hermes-speak
//
//  Created by Reid Chatham on 10/31/18.
//  Copyright © 2018 Reid Chatham. All rights reserved.
//

import Foundation

enum Update {
    case cell(CellUpdate)
    case section(SectionUpdate)
}

enum CellUpdate {
    case insertion(IndexPath)
    case deletion(IndexPath)
    case modification(IndexPath)
}

enum SectionUpdate {
    case insertion(Int)
    case deletion(Int)
    case modification(Int)
}
