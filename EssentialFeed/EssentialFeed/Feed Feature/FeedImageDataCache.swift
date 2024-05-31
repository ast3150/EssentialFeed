//
//  FeedImageDataCache.swift
//  EssentialFeed
//
//  Created by Alain Stulz on 28.04.23.
//

import Foundation

public protocol FeedImageDataCache {
    func save(_ data: Data, for url: URL) throws
}
