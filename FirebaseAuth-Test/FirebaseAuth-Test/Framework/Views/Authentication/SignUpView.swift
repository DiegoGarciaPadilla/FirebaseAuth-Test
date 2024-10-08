//
//  SignUpView.swift
//  FirebaseAuth-Test
//
//  Created by Diego Antonio García Padilla on 06/10/24.
//

import SwiftUI

struct SignUpView: View {
    
    // Variables
    @State private var email: String = ""
    @State private var password: String = ""
    
    // View password
    @State private var seePassword: Bool = false
    
    var body: some View {
        
        VStack (alignment: .center) {
            
            // Title
            Text("Sign Up")
                .font(.title)
            
            // Email
            TextField("Email", text: $email)
                .padding()
                .autocapitalization(.none)
                .keyboardType(.emailAddress)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(style: StrokeStyle(lineWidth: 0.1, lineCap: .round))
                ).padding()
            
            // Password
            if seePassword {
                HStack {
                    SecureField("Password", text: $password)
                        .padding()
                        .autocapitalization(.none)
                    
                    Button(action: {
                        seePassword.toggle()
                    }) {
                        Image (systemName: !seePassword ? "eye.slash.fill" : "eye.fill")
                            .padding()
                            .foregroundColor(.gray)
                    }
                }.overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(style: StrokeStyle(lineWidth: 0.1, lineCap: .round))
                ).padding()
            } else {
                HStack {
                    TextField("Password", text: $password)
                        .padding()
                        .autocapitalization(.none)
                    
                    Button(action: {
                        seePassword.toggle()
                    }) {
                        Image(systemName: !seePassword ? "eye.slash.fill" : "eye.fill")
                            .padding()
                            .foregroundColor(.gray)
                    }
                }.overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(style: StrokeStyle(lineWidth: 0.1, lineCap: .round))
                ).padding()
            }
            
            // Sign Up button
            Button {
                //
            } label: {
                Text("Sign Up")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(style: StrokeStyle(lineWidth: 0.1, lineCap: .round))
                    ).padding()
            }
            
            // Login button

            Button {
                //
            } label: {
                Text("Already have an account? Sign in")
                    .font(.caption)
            }
            
        }
        
    }
}

#Preview {
    SignUpView()
}
