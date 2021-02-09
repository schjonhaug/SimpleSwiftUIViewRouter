//
//  HomeView.swift
//  StateMachine
//
//  Created by Andreas Schjønhaug on 05/02/2021.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        Button("Onboarding") {
            viewRouter.setRoute(.onboarding)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
