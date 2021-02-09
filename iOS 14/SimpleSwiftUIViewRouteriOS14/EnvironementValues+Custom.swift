//
//  EnvironementValues+Custom.swift
//  SimpleSwiftUIViewRouteriOS14
//
//  Created by Andreas Schjønhaug on 09/02/2021.
//

import Foundation
import SwiftUI

struct RouteKey: EnvironmentKey {
    static var defaultValue: Binding<Route> =
        Binding.constant(Route.onboarding)
}
extension EnvironmentValues {
    var route: Binding<Route> {
        get { self[RouteKey.self] }
        set { self[RouteKey.self] = newValue }
    }
}
