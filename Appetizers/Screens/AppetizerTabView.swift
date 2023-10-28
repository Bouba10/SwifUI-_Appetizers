//
//  ContentView.swift
//  Appetizers
//
//  Created by Boubacar sidiki barry on 26.10.23.
//

import SwiftUI

struct AppetizerTabView: View {
    @ObservedObject var user: User
    @EnvironmentObject var order : Order
   
   
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
          
            AccountView(user: user)
                .tabItem { Label("Account", systemImage: "person") }
            
            OrderView()
                .tabItem { Label("Order", systemImage: "bag") }
                .badge(order.items.count)
        }
    }
}

#Preview {
    AppetizerTabView(user: User())
}
