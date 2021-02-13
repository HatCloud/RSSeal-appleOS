//
//  FeedDetailView.swift
//  ReaderDemo (iOS)
//
//  Created by Hat_Cloud on 21/2/12.
//

import Foundation
import SwiftUI
import WebKit

struct FeedDetailView: View{
    @State var url:String = "https://talk.dyingfordrinking.com/episodes/2021-chine"
    
    var body: some View{
        WebView(urlText: $url)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, idealHeight: 500, maxHeight: .infinity, alignment: .center)
             .padding()
    }
    
}

struct WebView:UIViewRepresentable  {
    @Binding var urlText: String
    
    func makeUIView(context:Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView:WKWebView, context: Context) {
        uiView.load(URLRequest(url: URL(string: urlText)!))
    }
}

struct FeedDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FeedDetailView()
    }
}
