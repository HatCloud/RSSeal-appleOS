//
//  Article.swift
//  ReaderDemo (iOS)
//
//  Created by Hat_Cloud on 21/2/2.
//

import Foundation
import Swift

struct FeedItem: Codable, Identifiable{
    var id: String
    var title: String
    var url: String
    var image: String? = nil
    var content_text: String
    var content_html: String
}
