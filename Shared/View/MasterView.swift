//
//  ContentView.swift
//  Shared
//
//  Created by Hat_Cloud on 21/2/2.
//

import SwiftUI

struct MasterView: View {
    
    @StateObject var data:Data = Data()
    @AppStorage("darkMode") var darkMode = false
    
    var body: some View {
        
        if let content = data.dyingForDrinkingContent {
            NavigationView {
                List(content.items) { feedItem in
                    NavigationLink(destination: FeedDetailView(url: feedItem.url))
                    {
                        FeedItemView(feedItem: feedItem)
                    }
                    
                }
                .navigationTitle(content.title)
                .toolbar {
                    DarkmModeSettingView(darkMode: $darkMode)
                }
            }
            .preferredColorScheme(darkMode ? .dark : .light)
        }else {
            Text(data.dyingForDrinkingContent?.title ?? "播客拉取中...")
                .font(.title)
                .bold()
                .padding(.bottom, 3)
        }
        
    }
}

struct MasterView_Previews: PreviewProvider {
    static var previews: some View {
        MasterView()
    }
}


