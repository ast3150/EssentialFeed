//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Alain Stulz on 27.04.23.
//

import Foundation

public protocol FeedImageDataStore {
    typealias Result = Swift.Result<Data?, Error>
    
    func retrieve(dataForURL url: URL, completion: @escaping (Result) -> Void)
}
