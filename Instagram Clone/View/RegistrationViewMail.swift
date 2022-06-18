//
//  RegistrationViewMail.swift
//  Instagram Clone
//
//  Created by Burak Cüce on 13.06.22.
//

import SwiftUI

struct RegistrationViewMail: View {
    
    @StateObject private var registerVM = RegisterViewMailModel()
    @EnvironmentObject var authentication: Authentication
    @State private var isPresented = false
    
    
    var body: some View {
        ZStack {
            
            VStack {
                
                Spacer()
                
                TextField("E-Mail-Adresse", text: $registerVM.credentials.email)
                    .keyboardType(.emailAddress)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(0.5)
                    .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                    .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: -5)
                
                
                Button {
                    print("Weiter")
                } label: {
                    Text("Weiter")
                        .font(.system(size: 15))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .frame(width: UIScreen.main.bounds.width - 30)
                        .background(Color.blue.opacity(0.8))
                        .cornerRadius(8)
                }
                .padding()
                
                Spacer()
                    .padding()
                
                HStack {
                    
                    Text("Du hast bereits ein Konto?")
                    Button {
                        isPresented.toggle()
                    } label: {
                        Text("Melde dich an.")
                    }
                    .fullScreenCover(isPresented: $isPresented) {
                        LoginView()
                    }
                }
                Spacer()
            }
        }
        .padding()
        
    }
}

struct RegistrationViewMail_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationViewMail()
    }
}
