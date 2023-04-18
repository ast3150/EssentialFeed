//
//  UIRefreshControl+Helpers.swift
//  EssentialFeediOS
//
//  Created by Alain Stulz on 18.04.23.
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
