//
//  TMDBAPIService.swift
//  FirebaseAuth-Test
//
//  Created by Diego Antonio García Padilla on 06/10/24.
//

import Alamofire
import Foundation

class TMDBAPIService {
    
    func fetchFavorites(url: URL) async throws -> FavoritesResponse {
        
        let apiKey = ProcessInfo.processInfo.environment["TMDB_ACCESS_KEY"]
        
        let header: HTTPHeaders = [
            "accept": "application/json",
            "Authorization": "Bearer \(apiKey!)"
        ]
        
        do {
            let response = try await AF.request(url, method: .get, headers: header)
                .validate()
                .serializingDecodable(FavoritesResponse.self)
                .value
            
            return response
        } catch {
            print("Error al obtener los favoritos: \(error)")
            throw error
        }
        
    }
    
}
