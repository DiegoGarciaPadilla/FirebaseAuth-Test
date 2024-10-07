//
//  UserRequirement.swift
//  FirebaseAuth-Test
//
//  Created by Diego Antonio García Padilla on 06/10/24.
//

import Foundation

protocol UserRequirementProtocol {
    func setCurrentUser(email: String)
    func getCurrentUser() -> String?
    func removeCurrentUser()
}

class UserRequirement: UserRequirementProtocol {
    
    // Singleton
    static let shared = UserRequirement()
    
    // Repositorio
    let dataRepository: UserRepository

    init(dataRepository: UserRepository = UserRepository.shared) {
        self.dataRepository = dataRepository
    }
    
    func setCurrentUser(email: String) {
        self.dataRepository.setCurrentUser(email: email)
    }
    
    func getCurrentUser() -> String? {
        return self.dataRepository.getCurrentUser()
    }
    
    func removeCurrentUser() {
        self.dataRepository.removeCurrentUser()
    }
}
