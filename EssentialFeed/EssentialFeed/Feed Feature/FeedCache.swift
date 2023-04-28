//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Alain Stulz on 28.04.23.
//

import Foundation

public protocol FeedCache {
    typealias Result = Swift.Result<Void, Error>
    
    func save(_ feed: [FeedImage], completion: @escaping (Result) -> Void)
}
