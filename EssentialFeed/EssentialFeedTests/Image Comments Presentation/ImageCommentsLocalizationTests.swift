//
//  ImageCommentsLocalizationTests.swift
//  EssentialFeedTests
//
//  Created by Alain Stulz on 19.02.2024.
//

import XCTest
import EssentialFeed

final class ImageCommentsLocalizationTests: XCTestCase {

    func test_localizedStrings_haveKeysAndValuesForAllSupportedLocalizations() {
        let table = "ImageComments"
        let presentationBundle = Bundle(for: ImageCommentsPresenter.self)
        
        assertLocalizedKeyAndValuesExist(in: presentationBundle, table)
    }

}
