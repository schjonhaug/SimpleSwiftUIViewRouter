//
//  ContentView.swift
//  SimpleSwiftUIViewRouter
//
//  Created by Andreas Schjønhaug on 08/02/2021.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewRouter = ViewRouter()
    
    var body: some View {
        
        switch viewRouter.rootView {
        case Route.onboarding:
            OnboardingView1().environmentObject(viewRouter)
        case Route.home:
            HomeView().environmentObject(viewRouter)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
