//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Alain Stulz on 17.10.22.
//

import Foundation

internal struct RemoteFeedItem: Decodable {
    internal let id: UUID
    internal let description: String?
    internal let location: String?
    internal let image: URL
}
