//
//  ProfileView.swift
//  FirebaseAuth-Test
//
//  Created by Diego Antonio García Padilla on 07/10/24.
//

import SwiftUI

struct ProfileView: View {
    
    @StateObject var viewModel = ProfileViewModel()
    
    let goRoot: () -> Void 

    var body: some View {
        VStack(alignment: .center, spacing: 24) {
            Text(viewModel.email)
            
            Button {
                viewModel.logOut()
                goRoot()
            } label: {
                HStack(spacing: 16) {
                    Image(systemName: "power")
                    Text("Logout")
                }.foregroundColor(.red)
            }
        }.onAppear {
            viewModel.getCurrentUser()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView {()}
    }
}
