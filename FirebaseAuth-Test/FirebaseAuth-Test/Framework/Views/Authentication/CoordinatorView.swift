//
//  CoordinatorView.swift
//  FirebaseAuth-Test
//
//  Created by Diego Antonio García Padilla on 06/10/24.
//

import FlowStacks
import SwiftUI

struct CoordinatorView: View {
    
    @State var routes: Routes<Screen> = []
    
    enum Screen: Hashable {
        case tabBar
    }
    
    var body: some View {
        
        FlowStack($routes, withNavigation: true) {
            LoginView(
                goTab: { routes.presentCover(.tabBar) }
            )
            .flowDestination(for: Screen.self) { screen in
                switch screen {
                case .tabBar:
                    MoviesTabView(
                        goRoot: { routes.removeAll() }
                    )
                }
            }
        }
        
    }
    
}

#Preview {
    CoordinatorView()
}
