//
//  MoviesListViewModel.swift
//  FirebaseAuth-Test
//
//  Created by Diego Antonio García Padilla on 06/10/24.
//

import Foundation

class MoviesListViewModel: ObservableObject {
    
    // Singleton del repositorio
    let repository: TMDBRepository
    
    init(repository: TMDBRepository = TMDBRepository()) {
        self.repository = repository
    }
    
    // Arreglo de peliculas
    @Published var movies: [Movie] = []
    
    func getFavoriteMovies() async {
        
        do {
            let response = try await repository.getFavoriteMovies()
            movies = response.results
        } catch {
            print("Error al obtener las peliculas favoritas: \(error.localizedDescription)")
        }
        
    }
    
}
