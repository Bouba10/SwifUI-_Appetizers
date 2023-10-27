//
//  EmptyState.swift
//  Appetizers
//
//  Created by Boubacar sidiki barry on 27.10.23.
//

import SwiftUI

struct EmptyState: View {
    let imageName : String
    let message : String
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame( height: 150)
                    
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.secondary)
                    .padding()
            }
            .offset(y:-50)
        }
    }
}

#Preview {
    EmptyState(imageName: "empty-order", message: "You have no items in your order.")
}
