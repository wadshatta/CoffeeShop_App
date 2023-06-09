//
//  DummyData.swift
//  coffee
//
//  Created by MacBook Pro on 07/06/2023.
//

import Foundation

struct DummyData {
    
    static let basket = Basket(id: UUID().uuidString, items: [])
    static let user = User(id: UUID().uuidString, name: "ahmed", address: "perm", mobile: "Y9")
    
     static let drinks: [Drink] = [
        Drink(id: UUID().uuidString,
          name: "Эспрессо",
          description: "Эспрессо - это способ приготовления кофе итальянского происхождения, при котором небольшое количество почти кипящей воды пропускается под давлением 9-10 бар через кофейные зерна мелкого помола. Эспрессо можно приготовить из самых разных кофейных зерен и степени обжарки",
          imageLink: "https://cdn.pixabay.com/photo/2015/05/07/13/46/cappuccino-756490_1280.jpg",
              price: 100.0,
              category: Category.cold),
        Drink(id: UUID().uuidString,
          name: "Эспрессо",
          description: "Эспрессо - это способ приготовления кофе итальянского происхождения, при котором небольшое количество почти кипящей воды пропускается под давлением 9-10 бар через кофейные зерна мелкого помола. Эспрессо можно приготовить из самых разных кофейных зерен и степени обжарки",
          imageLink: "https://cdn.pixabay.com/photo/2016/11/29/12/45/beverage-1869598_1280.jpg",
              price: 100.0,
              category: Category.hot),
        Drink(id: UUID().uuidString,
          name: "Эспрессо",
          description: "Эспрессо - это способ приготовления кофе итальянского происхождения, при котором небольшое количество почти кипящей воды пропускается под давлением 9-10 бар через кофейные зерна мелкого помола. Эспрессо можно приготовить из самых разных кофейных зерен и степени обжарки",
          imageLink: "https://cdn.pixabay.com/photo/2019/12/02/11/23/drink-4667507_1280.jpg",
              price: 100.0,
              category: Category.hot),
        Drink(id: UUID().uuidString,
          name: "Эспрессо",
          description: "Эспрессо - это способ приготовления кофе итальянского происхождения, при котором небольшое количество почти кипящей воды пропускается под давлением 9-10 бар через кофейные зерна мелкого помола. Эспрессо можно приготовить из самых разных кофейных зерен и степени обжарки",
          imageLink: "https://cdn.pixabay.com/photo/2019/12/02/11/23/drink-4667507_1280.jpg",
              price: 100.0,
              category: Category.cold),
        Drink(id: UUID().uuidString,
          name: "Эспрессо",
          description: "Эспрессо - это способ приготовления кофе итальянского происхождения, при котором небольшое количество почти кипящей воды пропускается под давлением 9-10 бар через кофейные зерна мелкого помола. Эспрессо можно приготовить из самых разных кофейных зерен и степени обжарки",
          imageLink: "https://cdn.pixabay.com/photo/2019/12/02/11/23/drink-4667507_1280.jpg",
              price: 100.0,
              category: Category.cold),
        Drink(id: UUID().uuidString,
          name: "Эспрессо",
          description: "Эспрессо - это способ приготовления кофе итальянского происхождения, при котором небольшое количество почти кипящей воды пропускается под давлением 9-10 бар через кофейные зерна мелкого помола. Эспрессо можно приготовить из самых разных кофейных зерен и степени обжарки",
          imageLink: "https://cdn.pixabay.com/photo/2019/12/02/11/23/drink-4667507_1280.jpg",
              price: 100.0,
              category: Category.softDrinks),
        Drink(id: UUID().uuidString,
          name: "Эспрессо",
          description: "Эспрессо - это способ приготовления кофе итальянского происхождения, при котором небольшое количество почти кипящей воды пропускается под давлением 9-10 бар через кофейные зерна мелкого помола. Эспрессо можно приготовить из самых разных кофейных зерен и степени обжарки",
          imageLink: "https://cdn.pixabay.com/photo/2019/12/02/11/23/drink-4667507_1280.jpg",
              price: 100.0,
              category: Category.softDrinks),
    ]
}