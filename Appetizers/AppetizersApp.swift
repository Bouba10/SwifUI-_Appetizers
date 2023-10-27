//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Boubacar sidiki barry on 26.10.23.
//

import SwiftUI

@main
struct AppetizersApp: App {
    @StateObject var user = User()
    @StateObject var order = Order()
    var body: some Scene {
        WindowGroup {
            AppetizerTabView(user: user)
                .environmentObject(order)
        }
    }
}
