//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Alain Stulz on 17.10.22.
//

import Foundation

 struct RemoteFeedItem: Decodable {
     let id: UUID
     let description: String?
     let location: String?
     let image: URL
}
