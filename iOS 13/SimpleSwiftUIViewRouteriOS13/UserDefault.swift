//
//  UserDefault.swift
//  SimpleSwiftUIViewRouter
//
//  Created by Andreas Schjønhaug on 08/02/2021.
//

import Foundation

extension UserDefaults {
    @UserDefault(key: "route", defaultValue: .onboarding)
    static var route: Route
}

@propertyWrapper
struct UserDefault<T> {
    let key: String
    let defaultValue: T

    var wrappedValue: T {
        get {
            UserDefaults.standard.object(forKey: self.key) as? T ?? self.defaultValue
        }
        set {
            UserDefaults.standard.set(newValue, forKey: self.key)
        }
    }
}
