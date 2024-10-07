//
//  LocalService.swift
//  FirebaseAuth-Test
//
//  Created by Diego Antonio García Padilla on 06/10/24.
//

import Foundation

class LocalService {
    
    // Singleton
    static let shared = LocalService()
    
    // Funciones
    
    func getCurrentUser() -> String? {
        return UserDefaults.standard.string(forKey: "currentUser")
    }

    func setCurrentUser(email: String) {
        UserDefaults.standard.set(email, forKey: "currentUser")
    }

    func removeCurrentUser() {
        UserDefaults.standard.removeObject(forKey: "currentUser")
    }
     
}
