//
//  UIView+TestHelpers.swift
//  EssentialAppTests
//
//  Created by Alain Stulz on 04.04.2024.
//

import UIKit

extension UIView {
    func enforceLayoutCycle() {
        layoutIfNeeded()
        RunLoop.current.run(until: Date())
    }
}
