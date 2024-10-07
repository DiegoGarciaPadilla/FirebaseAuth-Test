//
//  MoviesTabView.swift
//  FirebaseAuth-Test
//
//  Created by Diego Antonio García Padilla on 06/10/24.
//

import SwiftUI

struct MoviesTabView: View {
    var body: some View {
        TabView {
            MoviesListView().tabItem {
                Image(systemName: "film")
            }
            Text("Perfil").tabItem {
                Image(systemName: "person.circle")
            }
        }
    }
}

#Preview {
    MoviesTabView()
}
