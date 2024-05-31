//
//  FeedStoreSpy.swift
//  EssentialFeedTests
//
//  Created by Alain Stulz on 17.10.22.
//

import Foundation
import EssentialFeed

class FeedStoreSpy: FeedStore {
    enum ReceivedMessage: Equatable {
        case deleteCachedFeed
        case insert([LocalFeedImage], Date)
        case retrieve
    }
    
    private(set) var receivedMessages = [ReceivedMessage]()
    
    private var deletionResult: Result<Void, Error>?
    private var insertionResult: Result<Void, Error>?
    private var retrievalResult: Result<CachedFeed?, Error>?
    
    func deleteCachedFeed() throws {
        receivedMessages.append(.deleteCachedFeed)
        try deletionResult?.get()
    }
    
    
    func stubDeletion(with error: Error, at index: Int = 0) {
        deletionResult = .failure(error)
    }
    
    func stubDeletionSuccessfully(at index: Int = 0) {
        deletionResult = .success(())
    }
    
    func insert(_ feed: [LocalFeedImage], timestamp: Date) throws {
        receivedMessages.append(.insert(feed, timestamp))
        try insertionResult?.get()
    }
    
    func stubInsertion(with error: Error, at index: Int = 0) {
        insertionResult = .failure(error)
    }
    
    func stubInsertionSuccessfully(at index: Int = 0) {
        insertionResult = .success(())
    }
    
    func retrieve() throws -> CachedFeed? {
        receivedMessages.append(.retrieve)
        return try retrievalResult?.get()
    }
    
    func stubRetrieval(with error: Error, at index: Int = 0) {
        retrievalResult = .failure(error)
    }
    
    func stubRetrievalWithEmptyCache(at index: Int = 0) {
        retrievalResult = .success(.none)
    }

    func stubRetrieval(with feed: [LocalFeedImage], timestamp: Date, at index: Int = 0) {
        retrievalResult = .success(CachedFeed(feed: feed, timestamp: timestamp))
    }
}
