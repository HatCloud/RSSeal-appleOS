//
//  DarkModeSettingView.swift
//  ReaderDemo (iOS)
//
//  Created by Hat_Cloud on 21/2/12.
//

import Foundation
import SwiftUI

struct DarkmModeSettingView: View {
    
    @Binding var darkMode: Bool
    
    var body: some View {
        Button(action:{
            Vibration.selection.vibrat()
            darkMode.toggle()
        }){
            Image(systemName: darkMode ? "sun.max.fill" : "moon.fill")
                .font(.system(.headline, design:. rounded))
        }
    }
}

struct DarkmModeSettingView_Previews: PreviewProvider {
    static var previews: some View {
        DarkmModeSettingView(darkMode: .constant(false))
    }
}
