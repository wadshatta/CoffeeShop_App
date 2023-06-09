//
//  BasketView.swift
//  coffee
//
//  Created by MacBook Pro on 07/06/2023.
//

import SwiftUI

struct BasketView: View {
    @EnvironmentObject var userRepository : UserRepository
    @EnvironmentObject var  basket : BasketViewModel
    
    @ViewBuilder func placeOrderButton() -> some View{
        Button() {
            basket.createOrder(for: userRepository.user)
        } label: {
            Text("\(basket.totalPrice, format: .currency(code: "RUB")) - Place Order")
        }
        .buttonStyle(.borderedProminent)
        .padding(.bottom,30)

        
    }
    
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    List{
                        ForEach(basket.items){ drink in
                            DrinkRow(drink, didClickRow: {  })
                        }
                        .onDelete(perform: basket.deleteItem)
                    }.listStyle(.grouped)
                        .safeAreaInset(edge:.bottom){
                            placeOrderButton()
                            
                        }
                }
                if basket.items.isEmpty{
                    //Empty basket view
                    EmptyBasketView(message: "У вас нет товаров в вашей корзине. \n Пожалуйста, добавьте немного.")
                }
            }
            .navigationTitle("🧺 Kорзина")
        }
    }
}

struct BasketView_Previews: PreviewProvider {
    static var previews: some View {
        BasketView()
    }
}
