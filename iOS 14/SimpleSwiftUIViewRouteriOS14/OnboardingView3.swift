//
//  OnboardingView3.swift
//  StateMachine
//
//  Created by Andreas Schjønhaug on 05/02/2021.
//

import SwiftUI


struct OnboardingView3: View {
    
    @Environment(\.route) private var route: Binding<Route>
        
    var body: some View {
        Button("Done") {
            route.wrappedValue = .home
        }
    }
}

struct OnboardingView3_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView3()
    }
}
