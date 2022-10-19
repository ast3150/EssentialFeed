//
//  SharedTestHelpers.swift
//  EssentialFeedTests
//
//  Created by Alain Stulz on 19.10.22.
//

import Foundation

func anyURL() -> URL {
    return URL(string: "http://any-url.com")!
}

func anyNSError() -> NSError {
    return NSError(domain: "any error", code: 0)
}
