//
//  SwiftBasics.swift
//  task-tracker-swift
//
//  Created by miguel rocha on 02/04/26.
//

import Playgrounds

#Playground {
    
    // var "name:" Type = value
    var age: Int = 18
    var price: Double = 19.99
    var isActive: Bool = true
    var message: String = "Hello, World!"
    
    var colors: [String] = ["Red", "Blue", "Yellow"]
    colors.append("Green")
    
    var user: [String: String] = [
        "name": "Miguel Rocha",
        "role": "Future iOS Developer / Software Engineer",
    ]
    func greet() {
        print("Hello, World!")
    }
    
    greet()
    
    func calculateTotal(price: Double, quantity: Int) -> Double {
        return price * Double(quantity)
    }
    
    calculateTotal(price: 9.99, quantity: 3)
}
