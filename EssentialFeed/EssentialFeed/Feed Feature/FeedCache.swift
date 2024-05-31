//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Alain Stulz on 28.04.23.
//

import Foundation

public protocol FeedCache {
    func save(_ feed: [FeedImage]) throws
}
