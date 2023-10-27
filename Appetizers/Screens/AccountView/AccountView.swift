
//
//  AccountView.swift
//  Appetizers
//
//  Created by Boubacar sidiki barry on 26.10.23.
//

import SwiftUI

struct AccountView: View {
    
    @ObservedObject var user : User
   
    
    var body: some View {
        NavigationStack {
            Form{
                Section("Personal Info") {
                    TextField("First Name", text: $user.firstName)
                    TextField("Lst Name", text: $user.lastName)
                    TextField("Email", text: $user.email)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.never)
                  
                    DatePicker("Birthday", selection: $user.birthdate ,displayedComponents: [.date])
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Save Changes")
                    })
                    .disabled(user.disableForm)
                    
                }
                
                Section("requests"){
                    Toggle("Extra Napkins", isOn: $user.extraNapkins)
                       
                    Toggle("Frequent Refills", isOn: $user.frequentRefills)
                    
                } .tint(Color("AccentColor"))
                
            }
            
            
            
                .navigationTitle("👨🏿 Account")
        }
    }
}

#Preview {
    AccountView(user: User())
}
