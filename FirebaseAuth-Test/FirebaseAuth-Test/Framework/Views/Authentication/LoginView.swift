//
//  LoginView.swift
//  FirebaseAuth-Test
//
//  Created by Diego Antonio García Padilla on 06/10/24.
//

import SwiftUI

struct LoginView: View {
    
    // View Model
    @StateObject var viewModel = LoginViewModel()
    
    // Used by the coordinator to manage the flow
    let goTab: () -> Void
    
    var body: some View {
        
        VStack (alignment: .center) {
            
            // Title
            Text("Movies")
                .font(.title)
            
            // Email
            TextField("Email", text: $viewModel.email)
                .padding()
                .autocapitalization(.none)
                .keyboardType(.emailAddress)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(style: StrokeStyle(lineWidth: 0.1, lineCap: .round))
                ).padding()
            
            // Password
            if viewModel.seePassword {
                HStack {
                    SecureField("Password", text: $viewModel.password)
                        .padding()
                        .autocapitalization(.none)
                    
                    Button(action: {
                        viewModel.seePassword.toggle()
                    }) {
                        Image (systemName: !viewModel.seePassword ? "eye.slash.fill" : "eye.fill")
                            .padding()
                            .foregroundColor(.gray)
                    }
                }.overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(style: StrokeStyle(lineWidth: 0.1, lineCap: .round))
                ).padding()
            } else {
                HStack {
                    TextField("Password", text: $viewModel.password)
                        .padding()
                        .autocapitalization(.none)
                    
                    Button(action: {
                        viewModel.seePassword.toggle()
                    }) {
                        Image(systemName: !viewModel.seePassword ? "eye.slash.fill" : "eye.fill")
                            .padding()
                            .foregroundColor(.gray)
                    }
                }.overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(style: StrokeStyle(lineWidth: 0.1, lineCap: .round))
                ).padding()
            }
            
            // Login button
            Button {
                viewModel.setCurrentUser()
                goTab()
            } label: {
                Text("Login")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(style: StrokeStyle(lineWidth: 0.1, lineCap: .round))
                    ).padding()
                    .alert(isPresented: $viewModel.showAlert) {
                                Alert(
                                    title: Text("Oops!"),
                                    message: Text(viewModel.messageAlert)
                                )
                            }
            }
            
            // Sign Up button

            Button {
                //
            } label: {
                Text("Don't have an account? Sign Up")
                    .font(.caption)
            }
            
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView {
            ()
        }
    }
}
