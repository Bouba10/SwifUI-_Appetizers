
//
//  AccountView.swift
//  Appetizers
//
//  Created by Boubacar sidiki barry on 26.10.23.
//

import SwiftUI

struct AccountView: View {
    
    @ObservedObject var user : User
    
    @FocusState var focusedTextField : FormTextField?
    
    enum  FormTextField {
        case firstName , lastName ,email
    }
   
    
    var body: some View {
        NavigationStack {
            Form{
                Section("Personal Info") {
                    TextField("First Name", text: $user.firstName)
                        .focused($focusedTextField, equals: .firstName)
                        .onSubmit { focusedTextField = .lastName }
                        .submitLabel(.next)
                    
                    TextField("Lst Name", text: $user.lastName)
                        .focused($focusedTextField, equals: .lastName)
                        .onSubmit { focusedTextField = .email }
                        .submitLabel(.next)
                    
                    TextField("Email", text: $user.email)
                        .focused($focusedTextField, equals: .email)
                        .onSubmit { focusedTextField = nil }
                        .submitLabel(.continue)
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
            .toolbar{
                ToolbarItemGroup(placement: .keyboard) {
                    Button("Done"){
                        focusedTextField = nil
                    }
                }
            }
                .navigationTitle("👨🏿 Account")
        }
    }
}

#Preview {
    AccountView(user: User())
}
