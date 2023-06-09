//
//  DrinkDetailView.swift
//  coffee
//
//  Created by MacBook Pro on 08/06/2023.
//

import SwiftUI

struct DrinkDetailView: View {
    @EnvironmentObject var basket: BasketViewModel
    let drink: Drink
    @Binding var isShowingDetail : Bool
    
    
    
    
    @ViewBuilder func dismissButton()-> some View{
        Button {
            isShowingDetail = false
        } label: {
            Image(systemName: "xmark.circle.fill")
                .scaleEffect(1.5)
                .padding()
                .foregroundColor(.gray)
        }
      
        
    }
    
    
    @ViewBuilder func addToBasketButton()-> some View{
        Button {
            basket.add(drink: drink)
            isShowingDetail = false
        } label: {
            Text("\(drink.price, format: .currency(code: "RUB")) - Add to Basket")
        }
        .buttonStyle(.borderedProminent)
        .padding(.bottom,30)
        
    }
    
    var body: some View {
        VStack (spacing: 10){
            RemoteImage(url: drink.imageUrl)
                .frame(width: 300,height: 225)
                .aspectRatio(contentMode: .fit)
            VStack{
                Text(drink.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                Text(drink.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
            }
            Spacer()
          
            addToBasketButton()
            
        }
        .frame(width: 300,height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(alignment: .topTrailing){
            dismissButton()
        }
        
        
        
        
        
        
        
    }
}

struct DrinkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DrinkDetailView(drink: DummyData.drinks[0],isShowingDetail: .constant(true))
    }
}
