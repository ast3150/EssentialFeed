//
//  FeedImageDataLoaderSpy.swift
//  EssentialAppTests
//
//  Created by Alain Stulz on 28.04.23.
//

import EssentialFeed

class FeedImageDataLoaderSpy: FeedImageDataLoader {
    private var messages = [(url: URL, completion: (FeedImageDataLoader.Result) -> Void)]()
    
    private(set) var cancelledURLs = [URL]()
    
    private var completions: [(FeedImageDataLoader.Result) -> Void] {
        messages.map { $0.completion }
    }
    
    var loadedURLs: [URL] {
        return messages.map { $0.url }
    }
    
    private struct Task: FeedImageDataLoaderTask {
        let callback: () -> Void
        func cancel() { callback() }
    }
    
    func loadImageData(from url: URL, completion: @escaping (FeedImageDataLoader.Result) -> Void) -> FeedImageDataLoaderTask {
        messages.append((url, completion))
        return Task { [weak self] in
            self?.cancelledURLs.append(url)
        }
    }
    
    func complete(with error: NSError, at index: Int = 0) {
        completions[index](.failure(error))
    }
    
    func complete(with data: Data, at index: Int = 0) {
        completions[index](.success(data))
    }
}
