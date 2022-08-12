//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Alain Stulz on 02.08.22.
//

import Foundation

public struct FeedItem: Equatable {
    public let id: UUID
    public let description: String?
    public let location: String?
    public let imageURL: URL
    
    public init(id: UUID, description: String?, location: String?, imageURL: URL) {
        self.id = id
        self.description = description
        self.location = location
        self.imageURL = imageURL
    }
}

extension FeedItem: Codable {
    enum CodingKeys: String, CodingKey {
        case id, description, location
        case imageURL = "image"
    }
}
