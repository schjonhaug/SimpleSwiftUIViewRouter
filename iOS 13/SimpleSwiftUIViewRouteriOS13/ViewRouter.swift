//
//  StateMachine.swift
//  StateMachine
//
//  Created by Andreas Schjønhaug on 05/02/2021.
//

import Combine
import Foundation

class ViewRouter: ObservableObject {
    @Published private(set) var rootView = UserDefaults.route
    
    private let routeSubject = PassthroughSubject<Route, Never>()
    
    private var cancellable: AnyCancellable?
    
    init() {
        cancellable = self.routeSubject
            .receive(on: DispatchQueue.main)
            .handleEvents(receiveOutput: { rootView in
                UserDefaults.route = rootView
            })
            .sink(receiveValue: { [unowned self] in self.rootView = $0 })
    }
    
    
    func setRoute(_ route: Route) {
        routeSubject.send(route)
    }
}
