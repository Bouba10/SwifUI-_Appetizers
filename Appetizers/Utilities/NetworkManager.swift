//
//  NetworkManager.swift
//  Appetizers
//
//  Created by Boubacar sidiki barry on 26.10.23.
//
//
import Foundation

 class NetworkManager {
     
     static let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/appetizers"
     
       
       static func fetchAppetizers() async throws -> [Appetizer] {
           guard let url = URL(string: baseURL) else {
               throw APError.invalidURL
           }
           
           let (data, _) = try await URLSession.shared.data(from: url)
           let decodedData = try JSONDecoder().decode(AppetizerResponse.self, from: data)
           return decodedData.request
       }

}
