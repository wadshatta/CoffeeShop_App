//
//  BasketViewModel.swift
//  coffee
//
//  Created by MacBook Pro on 08/06/2023.
//

import Foundation


final class BasketViewModel : ObservableObject{
    private let firebaseRespository = FirebaseRepository()
    @Published private(set) var items:[Drink] = []
    
    func add(drink: Drink){
        items.append(drink)
      
    }
    func deleteItem(at offsets: IndexSet){
        items.remove(atOffsets:  offsets)
    }
    var totalPrice: Double{
        items.reduce(0){$0 + $1.price}
    }
    
    func createOrder(for user : User?){
        
        guard !items.isEmpty else {return}
        guard let user = user else {return}
        
        let order = Order(id: UUID().uuidString,
                          customerName: user.name,
                          customerAddress: user.address,
                          customerMobile: user.mobile,
                          items: items,
                          orderTotal: totalPrice)
        firebaseRespository.placeOrder(order:order )
        items = []
    }
}
