//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Alain Stulz on 02.08.22.
//

import Foundation

public typealias LoadFeedResult = Result<[FeedImage], Error>

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
