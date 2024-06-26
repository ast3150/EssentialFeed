//
//  LocalFeedLoader.swift
//  EssentialFeed
//
//  Created by Alain Stulz on 17.09.22.
//

import Foundation

public final class LocalFeedLoader {
    private let store: FeedStore
    private let currentDate: () -> Date
        
    public init(store: FeedStore, currentDate: @escaping () -> Date) {
        self.store = store
        self.currentDate = currentDate
    }
}

extension LocalFeedLoader: FeedCache {
    public func save(_ feed: [FeedImage]) throws {
        try store.deleteCachedFeed()
        try store.insert(feed.toLocal(), timestamp: self.currentDate())
    }
}

extension LocalFeedLoader {
    public func load() throws -> [FeedImage] {
        if let cache = try store.retrieve(),
           FeedCachePolicy.validate(cache.timestamp, against: self.currentDate()) {
            return cache.feed.toModels()
        } else {
            return []
        }
    }
}
 
extension LocalFeedLoader {
    public typealias ValidationResult = Result<Void, Error>

    public func validateCache(completion: @escaping (ValidationResult) -> Void) {
        do {
            if let cache = try store.retrieve(),
               !FeedCachePolicy.validate(cache.timestamp, against: self.currentDate()) {
                   try self.store.deleteCachedFeed()
            }
            completion(.success(()))
        } catch {
            do {
                try self.store.deleteCachedFeed()
                completion(.success(()))
            } catch {
                completion(.failure(error))
            }
        }
    }
}

private extension Array where Element == FeedImage {
    func toLocal() -> [LocalFeedImage] {
        return map { LocalFeedImage(id: $0.id, description: $0.description, location: $0.location, url: $0.url)}
    }
}

private extension Array where Element == LocalFeedImage {
    func toModels() -> [FeedImage] {
        return map { FeedImage(id: $0.id, description: $0.description, location: $0.location, url: $0.url)}
    }
}
