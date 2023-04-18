//
//  UIButton+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Alain Stulz on 10.02.23.
//

import UIKit

extension UIButton {
    func simulateTap() {
        simulate(event: .touchUpInside)
    }
}
