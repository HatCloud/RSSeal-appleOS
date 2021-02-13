//
//  RSSJsonContent.swift
//  ReaderDemo (iOS)
//
//  Created by Hat_Cloud on 21/2/12.
//

import Foundation


import Swift

struct RSSJsonContent: Codable{
    var description: String
    var feed_url: String
    var home_page_url: String
    var icon:String?
    var title:String
    var version:String
    var items:[FeedItem]
}

class Data: ObservableObject {
    @Published var dyingForDrinkingContent:RSSJsonContent? = nil
    
    init() {
        let url = URL(string: "https://talk.dyingfordrinking.com/episodes/feed.json")!
        
        URLSession.shared.dataTask(with: url){(data, response, error) in
            DispatchQueue.main.async {
                self.dyingForDrinkingContent = try! JSONDecoder().decode(RSSJsonContent.self, from: data!)
            }
        }.resume()
    }
}
