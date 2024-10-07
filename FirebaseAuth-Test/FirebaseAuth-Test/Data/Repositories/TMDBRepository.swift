//
//  TMDBRepository.swift
//  FirebaseAuth-Test
//
//  Created by Diego Antonio García Padilla on 06/10/24.
//

import Foundation

class TMDBRepository {
    
    // Singleton
    
    private let apiService: TMDBAPIService
    
    init (apiService: TMDBAPIService = TMDBAPIService()) {
        self.apiService = apiService
    }
    
    
    // Get favorite movies
    func getFavoriteMovies () async throws -> FavoritesResponse {
        let url = URL(string: "\(API.baseURL)\(API.Routes.favorites)")!
        let response = try await apiService.fetchFavorites(url: url)
        return response
    }
    
}
