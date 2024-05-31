//
//  FeedImageDataLoader.swift
//  EssentialFeediOS
//
//  Created by Alain Stulz on 10.02.23.
//

import Foundation

public protocol FeedImageDataLoader {
    func loadImageData(from url: URL) throws -> Data
}
