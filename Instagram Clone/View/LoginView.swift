//
//  LoginView.swift
//  Instagram Clone
//
//  Created by Burak Cüce on 12.06.22.
//

import SwiftUI


struct LoginView: View {
    
    @State var email: String = ""
    @State var password: String = ""
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
                        
                        TextField("E-Mail-Adresse oder Telefonnummer", text: $email)
                            .keyboardType(.emailAddress)
                            .padding()
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(0.5)
                            .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                            .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: -5)
                        
                        
                        SecureField("Passwort", text: $password)
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
                    
                    Button {
                        print("Anmelden")
                    } label: {
                        Text("Anmelden")
                            .font(.system(size: 15))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.vertical)
                            .frame(width: UIScreen.main.bounds.width - 40)
                            .background(Color.blue.opacity(0.8))
                            .cornerRadius(8)
                    }
                    .padding()
                    
                    HStack {
                        Text("Sie haben kein Konto?")
                        
                        Button {
                            print("Registrieren")
                        } label: {
                            Text("Registrieren")
                                .fontWeight(.bold)
                        }
                    }
                }
            }
        }
        .navigationBarHidden(true)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
