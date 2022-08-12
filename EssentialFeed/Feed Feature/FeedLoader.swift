//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Alain Stulz on 02.08.22.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedItem])
    case failure(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
