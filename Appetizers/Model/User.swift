//
//  User.swift
//  Appetizers
//
//  Created by Boubacar sidiki barry on 27.10.23.
//

import Foundation

class User: ObservableObject {
   @Published  var firstName       = ""
   @Published var lastName        = ""
   @Published var email           = ""
   @Published var birthdate       = Date()
   @Published var extraNapkins    = false
   @Published var frequentRefills = false
    
    
    
    
    var disableForm : Bool{
        firstName.count < 5 || lastName.count < 5 || email.count < 5 || !email.isValidEmail()
    }
    
    

    
}

