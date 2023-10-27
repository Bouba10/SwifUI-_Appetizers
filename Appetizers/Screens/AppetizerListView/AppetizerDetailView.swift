//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by Boubacar sidiki barry on 27.10.23.
//

import SwiftUI

struct AppetizerDetailView: View {
    let appetizer : Appetizer
    
    var body: some View {
        VStack{
            Image("asian-flank-steak")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225)
            
            Text(appetizer.name)
                .font(.title2)
                .fontWeight(.semibold)
            
            Text(appetizer.description)
                .multilineTextAlignment(.center)
                .font(.body)
                .padding()
            
            HStack(spacing:15){
                NutritionInfo(title: "calories", value: appetizer.calories)
                NutritionInfo(title: "Crabs", value: appetizer.calories)
                NutritionInfo(title: "Protein", value: appetizer.calories)
                
                
            }
           
            Spacer()
            Button{
                
            }label: {
                Text("$\(appetizer.price , specifier: "%.2f") - Add to Order ")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .frame(width:280 ,height: 50 ,alignment: .center)
                    .background(.green)
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .padding(.bottom , 30)
            }
          
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .shadow(radius: 40)
        .overlay(alignment : .topTrailing) {
            Button{
                
            }label: {
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
