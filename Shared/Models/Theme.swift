//
//  Theme.swift
//  CV (iOS)
//
//  Created by stage on 21/02/2023.
//


import Foundation
import SwiftUI
enum Theme: String{
    case bubblegum
    case buttercup
    case indigo
    case lavender
    case magenta
    case navy
    case orange
    case seafoam
    case tan
    case teal
    case periwinkle
    case poppy
    case yellow
    
    
    
    // Propriete d'accentuation pour les textes
    var accentColor: Color{
        switch self{
            case .bubblegum, .buttercup, .lavender, .orange,.periwinkle,.poppy,.seafoam,.tan,.teal,.yellow :return .black
            case .indigo, .magenta, .navy : return .white
        }
    }
    
    //proprieter de color
    
    var mainColor: Color{
        Color(rawValue)
    }
}
