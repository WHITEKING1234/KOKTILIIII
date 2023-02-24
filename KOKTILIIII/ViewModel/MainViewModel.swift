//
//  MainViewModel.swift
//  KOKTILIIII
//
//  Created by Mac on 25/2/23.
//

import Foundation
protocol MainViewModelType{
    func fentDrink() async throws -> Coctail
}
class MainViewModel:MainViewModelType{
    private let network : NetworkLayre
    init(){
        self.network = NetworkLayre.shared
    }
    func fentDrink() async throws -> Coctail{
        try await network.fethData()
    }
}
