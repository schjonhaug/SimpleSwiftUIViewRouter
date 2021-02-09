//
//  OnboardingView2.swift
//  StateMachine
//
//  Created by Andreas Schjønhaug on 05/02/2021.
//

import SwiftUI

struct OnboardingView2: View {
    
    var body: some View {
        NavigationLink("Next", destination: OnboardingView3())
        .navigationTitle("Onboarding 2")
    }
}

struct OnboardingView2_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView2()
    }
}
