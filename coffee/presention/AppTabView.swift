//
//  AppTabView.swift
//  coffee
//
//  Created by MacBook Pro on 07/06/2023.
//

import SwiftUI

struct AppTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem{
                    Image(systemName: "house")
                    Text("Home")
                }
            BasketView()
                .tabItem{
                    Image(systemName: "bag")
                    Text("Basket")
                }
            AccountView()
                .tabItem{
                    Image(systemName: "person")
                    Text("Account")
                }

        }
    }
}

struct AppTabView_Previews: PreviewProvider {
    static var previews: some View {
        AppTabView()
    }
}
