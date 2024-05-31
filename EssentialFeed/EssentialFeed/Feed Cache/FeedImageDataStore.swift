//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Alain Stulz on 27.04.23.
//

import Foundation

public protocol FeedImageDataStore {
    func insert(_ data: Data, for url: URL) throws
    func retrieve(dataForURL url: URL) throws -> Data?
}
