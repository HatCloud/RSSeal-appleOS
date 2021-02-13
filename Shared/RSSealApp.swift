//
//  ReaderDemoApp.swift
//  Shared
//
//  Created by Hat_Cloud on 21/2/2.
//

import SwiftUI

@main
struct RSSealApp: App {
    let motionManager = MotionManager()
    
    
    var body: some Scene {
        WindowGroup {
            MasterView()
                .environmentObject(motionManager)
        }
    }
}
