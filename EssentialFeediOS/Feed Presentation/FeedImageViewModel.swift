//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by Alain Stulz on 30.03.23.
//

import Foundation

struct FeedImageViewModel<Image> {
    let description: String?
    let location: String?
    let image: Image?
    let isLoading: Bool
    let shouldRetry: Bool
    
    var hasLocation: Bool {
        return location != nil
    }
}
