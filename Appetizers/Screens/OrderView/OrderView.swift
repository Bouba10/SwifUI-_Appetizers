//
//  OrderView.swift
//  Appetizers
//
//  Created by Boubacar sidiki barry on 26.10.23.
//

import SwiftUI

struct OrderView: View {
//    @State private var appetizers : [Appetizer] = [
//        MockData.sampleAppetizer ,
//        MockData.sampleAppetizer,
//        MockData.sampleAppetizer  ]
    
    @EnvironmentObject var order : Order
    
    var body: some View {
        NavigationStack {
            ZStack {
                
                VStack {
                    
                    List{
                        ForEach(order.items){ appetizer in
                            AppatizerListCell(appetizer: appetizer)
                        }.onDelete(perform: order.deleteItems)
                    }
                    .listStyle(.plain)
                    
                    Button{
                        
                    }label: {
                        Text("$\(order.total ,specifier: "%.2f") - Place Order")
                            .buttonStyle()
                    }
                    .padding(.bottom ,25)
                    
                }
                .navigationTitle("🧾 Order")
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order", message: "You have no items in your order.")
                }
                
                
                
               
            }
        }
    }
    
   
}

#Preview {
    OrderView()
        .environmentObject(Order())
}
