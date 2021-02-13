//
//  Vibration.swift
//  ReaderDemo
//
//  Created by Hat_Cloud on 21/2/13.
//

import SwiftUI

enum Vibration {
    case error
    case success
    case light
    case selection
    
    func vibrat(){
        switch self {
        case .error:
            UINotificationFeedbackGenerator().notificationOccurred(.error)
        case .success:
            UINotificationFeedbackGenerator().notificationOccurred(.success)
        case .light:
            UIImpactFeedbackGenerator(style: .light).impactOccurred()
        case .selection:
            UISelectionFeedbackGenerator().selectionChanged()
        }
    }
}
