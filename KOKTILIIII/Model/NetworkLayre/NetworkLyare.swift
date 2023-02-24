//
//  NetworkLyare.swift
//  KOKTILIIII
//
//  Created by Mac on 23/2/23.
//

import Foundation
final class NetworkLayre{
    
    static let shared = NetworkLayre()
    let BaseUrl = URL(string: "https://www.thecocktaildb.com/api/json/v1/1/filter.php?a=Alcoholic")!
    
    
    
    func fethData() async throws -> Coctail{
        let (data,_) = try await URLSession.shared.data(from: BaseUrl)
        return try await decodedate(data: data)
    }
    
    private func decodedate<T:Decodable>(data:Data) async throws -> T{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }
    
    
    
    
    
}
