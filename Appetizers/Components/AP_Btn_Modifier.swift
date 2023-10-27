//
//  AP_Btn_Modifier.swift
//  Appetizers
//
//  Created by Boubacar sidiki barry on 27.10.23.
//

import Foundation
import SwiftUI

struct APBtn : ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width:280 ,height: 50 ,alignment: .center)
            .background(.green)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .padding(.bottom , 30)
    }
    
    
}
