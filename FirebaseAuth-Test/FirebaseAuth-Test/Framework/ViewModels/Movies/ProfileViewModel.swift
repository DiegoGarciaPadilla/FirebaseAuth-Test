//
//  ProfileViewModel.swift
//  FirebaseAuth-Test
//
//  Created by Diego Antonio García Padilla on 07/10/24.
//

import Foundation

class ProfileViewModel: ObservableObject {
    @Published var email = ""
    
    var userRequirement: UserRequirementProtocol
    
    init(userRequirement: UserRequirementProtocol = UserRequirement.shared) {
        self.userRequirement = userRequirement
    }
    
    @MainActor
    func getCurrentUser() {
        self.email = self.userRequirement.getCurrentUser() ?? ""
    }
    
    @MainActor
    func logOut() {
        self.email = ""
        self.userRequirement.removeCurrentUser()
    }
}
