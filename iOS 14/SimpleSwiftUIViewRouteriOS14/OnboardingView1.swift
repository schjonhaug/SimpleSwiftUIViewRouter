//
//  OnboardingView1.swift
//  StateMachine
//
//  Created by Andreas Schjønhaug on 05/02/2021.
//

import SwiftUI

struct OnboardingView1: View {
    
    var body: some View {
        NavigationView {
            NavigationLink("Next", destination: OnboardingView2())
            .navigationTitle("Onboarding 1")
        }
    }
}

struct OnboardingView1_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView1()
    }
}
