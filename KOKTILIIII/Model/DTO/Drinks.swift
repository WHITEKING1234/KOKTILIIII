//
//  Model.swift
//  KOKTILIIII
//
//  Created by Mac on 23/2/23.
//

import Foundation
struct Coctail: Decodable{
    let drinks: [Drinks]
}

struct Drinks: Decodable {
    let strDrink: String
    let strDrinkThumb: String
//    let strIngredient1 : String
//    let strInstructions :String
}
