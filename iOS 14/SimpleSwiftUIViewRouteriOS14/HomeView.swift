//
//  HomeView.swift
//  StateMachine
//
//  Created by Andreas Schjønhaug on 05/02/2021.
//

import SwiftUI

struct HomeView: View {
    
    @Environment(\.route) private var route: Binding<Route>
    
    var body: some View {
        Button("Onboarding") {
            route.wrappedValue = .onboarding
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
