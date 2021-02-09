//
//  ContentView.swift
//  SimpleSwiftUIViewRouter
//
//  Created by Andreas Schjønhaug on 08/02/2021.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("route") var route = Route.onboarding
    
    var body: some View {
        switch route {
        case .onboarding:
            OnboardingView1().environment(\.route, $route)
        case .home:
            HomeView().environment(\.route, $route)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
