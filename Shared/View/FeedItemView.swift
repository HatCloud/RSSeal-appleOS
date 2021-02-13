//
//  FeedItemView.swift
//  ReaderDemo (iOS)
//
//  Created by Hat_Cloud on 21/2/12.
//

import Foundation
import SwiftUI

struct FeedItemView:View{
    
    var feedItem:FeedItem
    @EnvironmentObject var motion: MotionManager
    
    var body:some View {

        
        HStack() {
//            Image(url: feedItem.image ?? "https://i.typlog.com/hatcloud/8395362505_926343.jpg?x-oss-process=style/sl")
            VStack(alignment: .leading){
                Text(feedItem.title)
                    .font(.title3)
                    .bold()
                    .padding(.bottom, 3)
                    .scaleEffect(max(1, (0.7 + -motion.y * 0.45)))
                Text(feedItem.content_text)
                    .lineLimit(3)
                    .scaleEffect(max(1, (0.7 + -motion.y * 0.37)))
            }
        }.padding(.vertical)
    }
    
}

struct FeedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeedItemView(feedItem: FeedItem(id: "hahahah", title: "标题噢", url: "连接噢", content_text: "正文噢", content_html: ""))
    }
}
