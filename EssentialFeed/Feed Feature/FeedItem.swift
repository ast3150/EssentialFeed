//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Alain Stulz on 02.08.22.
//

import Foundation

public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}
