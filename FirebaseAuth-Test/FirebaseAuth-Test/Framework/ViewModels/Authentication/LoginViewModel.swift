//
//  LoginViewModel.swift
//  FirebaseAuth-Test
//
//  Created by Diego Antonio García Padilla on 06/10/24.
//

import Foundation

class LoginViewModel: ObservableObject {
    
    // Email & Password
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var seePassword: Bool = false
    
    // Manejo de erorres
    @Published var messageAlert = ""
    @Published var showAlert = false
    
    // Requirement
    var userRequirement: UserRequirementProtocol
    
    init(userRequirement: UserRequirementProtocol = UserRequirement.shared) {
        self.userRequirement = userRequirement
    }
    
    @MainActor
    func setCurrentUser() {
        if self.email != "" {
            self.userRequirement.setCurrentUser(email: self.email)
        } else {
            self.messageAlert = "Correo inválido"
            self.showAlert = true
        }
    }
    
    @MainActor
    func getCurrentUser() {
        self.email = self.userRequirement.getCurrentUser() ?? ""
    }
    
}
