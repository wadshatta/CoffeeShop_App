//
//  HomeViewModel.swift
//  coffee
//
//  Created by MacBook Pro on 07/06/2023.
//

import Foundation

final class HomeViewModel: ObservableObject{
    private let firebaseRepository = FirebaseRepository()
    @Published private(set) var drinks: [Drink] = []
    @Published private(set) var selectedDrink: Drink?
    
    
    @MainActor
  @Sendable  func fetchDrinks() async{
        do{
            drinks = try await firebaseRepository.fetchDrinks()
        }catch{
            print("error fetching drinks", error.localizedDescription)
        }
    }
    func selectDrink(drink:Drink){
        selectedDrink = drink
    }
}
