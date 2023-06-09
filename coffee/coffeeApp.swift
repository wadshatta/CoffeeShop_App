//
//  coffeeApp.swift
//  coffee
//
//  Created by MacBook Pro on 07/06/2023.
//

import SwiftUI

@main
struct coffeeApp: App {
    var body: some Scene {
        WindowGroup {
            AppTabView()
                .environmentObject(BasketViewModel())
                .environmentObject(UserRepository())
        }
    }
}
