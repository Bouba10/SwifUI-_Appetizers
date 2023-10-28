//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Boubacar sidiki barry on 26.10.23.
//

import SwiftUI



struct AppetizerListView: View {
    
    @State private var appetizers = [Appetizer]()
    
    
    var body: some View {
        NavigationStack {
            List(appetizers){ appetizer in
                
                   
               
                NavigationLink{
                    
                    ZStack {
                        Rectangle()
                            .background(.green)
                            .frame(maxWidth: .infinity , maxHeight:.infinity)
                        .blur(radius: 20, opaque: false)
                        AppetizerDetailView(appetizer: appetizer)
                    }
                    
                }label: {
                    AppatizerListCell(appetizer: appetizer)
                        
                } .listRowSeparator(.hidden)
            }
            .task {
                do {
                    appetizers = try await NetworkManager.fetchAppetizers()
                } catch {
                    print("Error fetching appetizers: \(error)")
                }
            }
            .navigationTitle("🍟 Appetizers")
            .listStyle(.plain)
            
        }
    }
    
}

#Preview {
    AppetizerListView()
    
}

