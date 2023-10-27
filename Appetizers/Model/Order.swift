//
//  Order.swift
//  Appetizers
//
//  Created by Boubacar sidiki barry on 27.10.23.
//

import SwiftUI

final class Order : ObservableObject {
    
    @Published var items = [Appetizer]()
    
    
    var total : Double {
        if items.count > 0 {
            return items.reduce(0) { $0 + $1.price }
        }
        else{
            return 0
        }
    }
    
    func add(item :Appetizer){
        items.append(item)
    }
    
    func deleteItems(at offsets: IndexSet){
        items.remove(atOffsets: offsets)
    }   
    
}
