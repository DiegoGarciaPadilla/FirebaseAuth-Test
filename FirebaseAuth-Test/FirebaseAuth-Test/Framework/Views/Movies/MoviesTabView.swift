//
//  MoviesTabView.swift
//  FirebaseAuth-Test
//
//  Created by Diego Antonio García Padilla on 06/10/24.
//

import SwiftUI

struct MoviesTabView: View {
    
    // Used by the coordinator to manage the flow
    let goRoot: () -> Void
    
    var body: some View {
        TabView {
            MoviesListView().tabItem {
                Image(systemName: "film")
                Text("Movies")
            }
            ProfileView(goRoot: goRoot).tabItem {
                Image(systemName: "person.circle")
                Text("Profile")
            }
        }
    }
}

struct MoviesTabView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesTabView {
            ()
        }
    }
}
