//
//  FeedErrorViewModel.swift
//  EssentialFeediOS
//
//  Created by Alain Stulz on 18.04.23.
//

struct FeedErrorViewModel {
    let message: String?
    
    static var noError: FeedErrorViewModel {
        return FeedErrorViewModel(message: nil)
    }
    
    static func error(message: String) -> FeedErrorViewModel {
        return FeedErrorViewModel(message: message)
    }
}
