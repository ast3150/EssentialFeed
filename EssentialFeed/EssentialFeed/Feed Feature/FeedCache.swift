//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Alain Stulz on 28.04.23.
//

import Foundation

public protocol FeedCache {
    typealias SaveResult = Result<Void, Error>
    
    func save(_ feed: [FeedImage], completion: @escaping (SaveResult) -> Void)
}
