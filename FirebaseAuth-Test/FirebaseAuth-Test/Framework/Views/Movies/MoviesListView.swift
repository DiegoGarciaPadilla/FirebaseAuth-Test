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
        NavigationView {
            VStack {
                Text("Movies List")
                    .font(.title)
                    .padding()
                
                List(moviesListViewModel.movies) { movie in
                    NavigationLink {
                        VStack {
                            Text(movie.original_title)
                                .font(.title)
                                .multilineTextAlignment(.leading)
                                .frame(maxWidth: .infinity)
                                .padding()
                            
                            Text(movie.overview)
                                .multilineTextAlignment(.leading)
                                .padding()
                            
                            Spacer()
                        }
                    } label: {
                        Text(movie.original_title)
                    }
                }.onAppear {
                    Task {
                        let _ = await moviesListViewModel.getFavoriteMovies()
                    }
                }
            }
        }
    }
}

#Preview {
    MoviesListView()
}
