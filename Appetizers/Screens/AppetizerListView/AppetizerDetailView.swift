//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by Boubacar sidiki barry on 27.10.23.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    @EnvironmentObject var order : Order
    
    let appetizer : Appetizer
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack{
            
            AsyncImage(url: URL(string: appetizer.imageURL)!) { image in
                        image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 225)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                    } placeholder: {
                       
                        Image("food-placeholder")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300, height: 225)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
            
            
           
            
            VStack {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
            }
            
            
            HStack(spacing:15){
                NutritionInfo(title: "calories", value: appetizer.calories)
                NutritionInfo(title: "Crabs", value: appetizer.carbs)
                NutritionInfo(title: "Protein", value: appetizer.protein)
                
                
            }
           
            Spacer()
            Button{
                order.add(item: appetizer)
                dismiss()
            }label: {
                Text("$\(appetizer.price , specifier: "%.2f") - Add to Order ")
                    .buttonStyle()
            }
          
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .shadow(radius: 40)
        .overlay(alignment : .topTrailing) {
            Button{
                dismiss()
            }label: {
                AP_XButton()
               
            }
        }
       
    }
}

#Preview {
    AppetizerDetailView(appetizer: MockData.sampleAppetizer)
       
}

struct NutritionInfo: View {
    
    let title : String
    let value : Int
    
    var body: some View {
        VStack{
            Text(title)
                .font(.title2)
                .fontWeight(.semibold)
            
            Text("\(value) g")
                .font(.title2)
                .foregroundStyle(.secondary)
                .italic()
            
        }
    }
}

struct AP_XButton: View {
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 30)
                .foregroundStyle(.white)
                .opacity(0.6)
            
            Image(systemName: "xmark")
                .frame(width: 44 , height: 44 ,alignment: .center)
                .fontWeight(.bold)
        }
    }
}
