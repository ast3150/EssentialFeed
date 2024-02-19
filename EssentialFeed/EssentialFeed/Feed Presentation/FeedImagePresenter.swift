//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by Alain Stulz on 09.03.23.
//

import Foundation

public final class FeedImagePresenter {
    public static func map(_ image: FeedImage) -> FeedImageViewModel {
        FeedImageViewModel(
            description: image.description,
            location: image.location
        )
    }
}
