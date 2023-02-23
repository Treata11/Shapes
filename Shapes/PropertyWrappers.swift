//
//  PropertyWrappers.swift
//  Shapes
//
//  Created by Treata Norouzi on 2/23/23.
//

import SwiftUI

public enum Appearance {
    case minimalist
    case fancy
}

private struct AppearanceKey: EnvironmentKey {
//    static let defaultValue: String = "appearance"
    static let defaultValue: Appearance = .minimalist
}

extension EnvironmentValues {
//    var appearance: String {
//        get { self[AppearanceKey.self] }
//        set { self[AppearanceKey.self] = newValue }
//    }
    var appearance: Appearance {
        get { self[AppearanceKey.self] }
        set { self[AppearanceKey.self] = newValue }
    }
}

//struct Appearance {
//    var minimalist: Bool
//    init(fancy: Bool) {
//        minimalist = fancy ? false : true
//    }
//}


