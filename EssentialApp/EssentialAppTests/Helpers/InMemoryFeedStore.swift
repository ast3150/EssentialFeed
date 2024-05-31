//
//  InMemoryFeedStore.swift
//  EssentialAppTests
//
//  Created by Alain Stulz on 31.05.2024.
//

import EssentialFeed

class InMemoryFeedStore: FeedStore, FeedImageDataStore {
    private(set) var feedCache: CachedFeed?
    private var feedImageDataCache: [URL: Data] = [:]
    
    private init(feedCache: CachedFeed? = nil) {
        self.feedCache = feedCache
    }
    
    func deleteCachedFeed() throws {
        feedCache = nil
    }
    
    func insert(_ feed: [LocalFeedImage], timestamp: Date) throws {
        feedCache = CachedFeed(feed: feed, timestamp: timestamp)
    }
    
    func retrieve() throws -> CachedFeed? {
        return feedCache
    }
    
    func insert(_ data: Data, for url: URL) throws {
        feedImageDataCache[url] = data
    }
    
    func retrieve(dataForURL url: URL) throws -> Data? {
        feedImageDataCache[url]
    }
}

extension InMemoryFeedStore {
    static var empty: InMemoryFeedStore {
        return InMemoryFeedStore()
    }
    
    static var withExpiredFeedCache: InMemoryFeedStore {
        InMemoryFeedStore(feedCache: CachedFeed(feed: [], timestamp: Date.distantPast))
    }
    
    static var withNonExpiredFeedCache: InMemoryFeedStore {
        InMemoryFeedStore(feedCache: CachedFeed(feed: [], timestamp: Date()))
    }
}
