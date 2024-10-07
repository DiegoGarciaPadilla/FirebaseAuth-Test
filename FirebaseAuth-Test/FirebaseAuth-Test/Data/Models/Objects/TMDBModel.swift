//
//  TMDBModel.swift
//  FirebaseAuth-Test
//
//  Created by Diego Antonio García Padilla on 06/10/24.
//

import Foundation

struct FavoritesResponse : Codable {
    var page: Int
    var results: [Movie]
}

struct Movie : Codable, Identifiable {
    var id: Int
    var original_title: String
    var overview: String
    var poster_path: String?
}
