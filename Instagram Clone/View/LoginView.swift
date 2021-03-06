//
//  LoginView.swift
//  Instagram Clone
//
//  Created by Burak Cüce on 12.06.22.
//

import SwiftUI


struct LoginView: View {
    
    @StateObject private var loginVM = LoginViewModel()
    @EnvironmentObject var authentication: Authentication
    @State private var isPresented = false
    
    var body: some View {
        
        NavigationView {
            ZStack {
                
                VStack {
                    
                    VStack {
                        
                        Image("Instagram-text")
                            .resizable()
                            .frame(width: 200, height: 80)
                        
                    }
                    
                    VStack(alignment: .leading, spacing: 15) {
                        
                        TextField("E-Mail-Adresse oder Telefonnummer", text: $loginVM.credentials.email)
                            .keyboardType(.emailAddress)
                            .padding()
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(0.5)
                            .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                            .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: -5)
                        
                        
                        SecureField("Passwort", text: $loginVM.credentials.password)
                            .padding()
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(0.5)
                            .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                            .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: -5)
                        
                    }
                    .padding()
                    
                    NavigationLink("Passwort vergessen?", destination: {
                        PasswordRecoverView()
                    })
                    
                    
                    .padding(.leading, 190)
                    
                    if loginVM.showProgressView {
                        ProgressView()
                    }
                    
                    Button("Anmelden") {
                        self.isPresented.toggle()
                        
                    }
                    .fullScreenCover(isPresented: $isPresented) {
                        CustomTabView()
                    }
                    .disabled(loginVM.loginDisabled)
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 30)
                    .background(Color.blue)
                    .cornerRadius(8)
                    .onTapGesture {
                        UIApplication.shared.endEditing()
                    }
                    .autocapitalization(.none)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .disabled(loginVM.showProgressView)
                    
                    HStack {
                        Text("Sie haben kein Konto?")
                        
                        NavigationLink("Registrieren", destination: RegistrationView())
                            .navigationBarHidden(true)
                    }
                }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
