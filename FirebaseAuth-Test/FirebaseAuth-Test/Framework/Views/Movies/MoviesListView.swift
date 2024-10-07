//
//  MoviesListView.swift
//  FirebaseAuth-Test
//
//  Created by Diego Antonio García Padilla on 06/10/24.
//

import SwiftUI

struct MoviesListView: View {
    
    // ViewModel
    @ObservedObject var moviesListViewModel = MoviesListViewModel()
    
    var body: some View {
        VStack {
            Text("Movies List")
            
                .font(.title)
                .padding()
            
            List {
                ForEach(moviesListViewModel.movies) { movie in
                    Text(movie.original_title)
                        .font(.headline)
                        .padding()
                }
            }.onAppear {
                Task {
                    let _ = await moviesListViewModel.getFavoriteMovies()
                }
            }
        }
    }
}

#Preview {
    MoviesListView()
}
