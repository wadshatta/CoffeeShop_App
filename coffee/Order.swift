//
//  Order.swift
//  coffee
//
//  Created by MacBook Pro on 07/06/2023.
//

import Foundation

struct Order:Codable{
    let id : String
    let customerName : String
    let customerAddress : String
    let customerMobile: String
    let items: [Drink]
    let orderTotal : Double
}
