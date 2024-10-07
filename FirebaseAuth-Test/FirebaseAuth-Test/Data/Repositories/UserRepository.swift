//
//  UserRepository.swift
//  FirebaseAuth-Test
//
//  Created by Diego Antonio García Padilla on 06/10/24.
//

import Foundation

protocol UserServiceProtocol {
    func getCurrentUser() -> String?
    func setCurrentUser(email:String)
    func removeCurrentUser()
}

class UserRepository: UserServiceProtocol {
    
    // Singleton
    static let shared = UserRepository()
    
    // Manejo de base de datos local
    var localService = LocalService()
    
    init(localService: LocalService = LocalService.shared) {
        self.localService = localService
    }
    
    func getCurrentUser() -> String? {
        self.localService.getCurrentUser()
    }
    
    func setCurrentUser(email: String) {
        self.localService.setCurrentUser(email: email)
    }
    
    func removeCurrentUser() {
        self.localService.removeCurrentUser()
    }
}
