//
//  UITableView+Dequeueing.swift
//  EssentialFeediOS
//
//  Created by Alain Stulz on 31.03.23.
//

import UIKit

extension UITableView {
    func dequeueReusableCell<T: UITableViewCell>() -> T {
        let identifier = String(describing: T.self)
        return dequeueReusableCell(withIdentifier: identifier) as! T
    }
}
