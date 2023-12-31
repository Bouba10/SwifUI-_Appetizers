import Foundation


struct Appetizer : Codable , Identifiable{
    
            let id: Int
            let name: String
            let description: String
            let price: Double
            let imageURL: String
            let calories: Int
            let protein: Int
            let carbs: Int
}

struct AppetizerResponse : Codable {
    let request : [Appetizer]
}

struct MockData {
    
    static let sampleAppetizer = Appetizer(id: 0001,
                                           name: "Test Appetizer",
                                           description: "This is the description for my appetizer. It's yummy.",
                                           price: 9.99,
                                           imageURL: "https://seanallen-course-backend.herokuapp.com/images/appetizers/asian-flank-steak.jpg",
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)
    
    static let orderItemOne     = Appetizer(id: 0001,
                                               name: "Test Appetizer One",
                                               description: "This is the description for my appetizer. It's yummy.",
                                               price: 9.99,
                                               imageURL: "",
                                               calories: 99,
                                               protein: 99,
                                               carbs: 99)
        
        static let orderItemTwo     = Appetizer(id: 0002,
                                               name: "Test Appetizer Two",
                                               description: "This is the description for my appetizer. It's yummy.",
                                               price: 9.99,
                                               imageURL: "",
                                               calories: 99,
                                               protein: 99,
                                               carbs: 99)
        
        static let orderItemThree   = Appetizer(id: 0003,
                                               name: "Test Appetizer Three",
                                               description: "This is the description for my appetizer. It's yummy.",
                                               price: 9.99,
                                               imageURL: "",
                                               calories: 99,
                                               protein: 99,
                                               carbs: 99)
        
        static let orderItems       = [orderItemOne, orderItemTwo, orderItemThree]
}
