//
//  Functions.swift
//  StoreSearch
//
//  Created by Vladimir Soshin on 18.10.2023.
//

import Foundation

func < (lhs: SearchResult, rhs: SearchResult) -> Bool {
    return lhs.name.localizedStandardCompare(rhs.name) == .orderedAscending
}
