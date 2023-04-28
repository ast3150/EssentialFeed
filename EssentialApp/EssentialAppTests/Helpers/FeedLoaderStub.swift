//
//  FeedLoaderStub.swift
//  EssentialAppTests
//
//  Created by Alain Stulz on 28.04.23.
//

import EssentialFeed

class FeedLoaderStub: FeedLoader {
    private let result: FeedLoader.Result
    
    init(result: FeedLoader.Result) {
        self.result = result
    }
    
    func load(completion: @escaping (Result<[FeedImage], Error>) -> Void) {
        completion(result)
    }
}
