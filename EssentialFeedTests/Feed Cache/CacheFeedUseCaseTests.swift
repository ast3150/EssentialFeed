//
//  CacheFeedUseCaseTests.swift
//  EssentialFeedTests
//
//  Created by Alain Stulz on 17.09.22.
//

import XCTest

class LocalFeedLoader {
    init(store: FeedStore) {
        
    }
}

class FeedStore {
    var deleteCachedFeedCallCount = 0
}


class CacheFeedUseCaseTests: XCTestCase {
    func test() {
        let store = FeedStore()
        let sut = LocalFeedLoader(store: store)
        
        XCTAssertEqual(store.deleteCachedFeedCallCount, 0)
    }
}
