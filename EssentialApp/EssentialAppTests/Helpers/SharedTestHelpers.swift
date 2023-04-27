//
//  SharedTestHelpers.swift
//  EssentialAppTests
//
//  Created by Alain Stulz on 27.04.23.
//

import Foundation

func anyNSError() -> NSError {
    return NSError(domain: "any error", code: 0)
}

func anyData() -> Data {
    return "any-data".data(using: .utf8)!
}

func anyURL() -> URL {
    URL(string: "http://any-url.com")!
}
