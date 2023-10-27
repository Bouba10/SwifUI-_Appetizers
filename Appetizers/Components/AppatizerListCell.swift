//
//  AppatizerListCell.swift
//  Appetizers
//
//  Created by Boubacar sidiki barry on 26.10.23.
//

import SwiftUI

struct AppatizerListCell: View {
    let appetizer : Appetizer
    var body: some View {
        HStack{

    AsyncImage(url: URL(string: appetizer.imageURL)!) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120 , height: 90)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
            } placeholder: {
               // ProgressView()
                Image("food-placeholder")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120 , height: 90)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
                
            
            VStack(alignment: .leading ,spacing: 5){
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                
                
                Text("$\(appetizer.price , specifier: "%.2f")")
                    .foregroundStyle(.secondary)
                    .fontWeight(.semibold)
                
            }.padding(.leading)
        }
    }
}


#Preview {
    AppatizerListCell(appetizer: MockData.sampleAppetizer)
}
