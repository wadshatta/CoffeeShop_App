//
//  FirebaseRepository.swift
//  coffee
//
//  Created by MacBook Pro on 07/06/2023.
//

import Foundation

final class FirebaseRepository{
    func fetchDrinks() async throws -> [Drink] {
        DummyData.drinks
        
    }
    func placeOrder(order: Order){
        print("Place an order with id : \(order.customerName)")
        for item in order .items{
            print(item.name)
        }
    }
}
