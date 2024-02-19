//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by Alain Stulz on 30.03.23.
//

import Foundation

public struct FeedImageViewModel {
    public let description: String?
    public let location: String?
    
    public var hasLocation: Bool {
        return location != nil
    }
}
