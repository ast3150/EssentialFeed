//
//  FeedLocalizationTests.swift
//  EssentialFeediOSTests
//
//  Created by Alain Stulz on 31.03.23.
//

import XCTest
import EssentialFeed

final class FeedLocalizationTests: XCTestCase {
    
    func test_localizedStrings_haveKeysAndValuesForAllSupportedLocalizations() {
        let table = "Feed"
        let presentationBundle = Bundle(for: FeedPresenter.self)
        
        assertLocalizedKeyAndValuesExist(in: presentationBundle, table)
    }
}
