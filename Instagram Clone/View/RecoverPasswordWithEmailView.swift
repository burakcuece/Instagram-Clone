//
//  RecoverPasswordWithEmailView.swift
//  Instagram Clone
//
//  Created by Burak Cüce on 12.06.22.
//

import SwiftUI

struct RecoverPasswordWithEmailView: View {
    
    @State var email = ""
    @State private var isPresented = false
    
    
    var body: some View {
        
        
        
        
        VStack {
            
            
            TextField("Benutzername oder E-Mail Adresse", text: $email)
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
                    .frame(width: UIScreen.main.bounds.width - 40)
                    .background(Color.blue.opacity(0.8))
                    .cornerRadius(8)
            }
            .padding()
            
            Button {
                print("Benötigst du weitere Hilfe?")
            } label: {
                Text("Benötigst du weitere Hilfe?")
            }
            .padding()
            
            Text("ODER")
                .foregroundColor(Color.gray)
                .padding()
            
            
            Button {
                print("Mit Facebook anmelden")
            } label: {
                
                HStack {
                    Image("Facebook-logo")
                        .resizable()
                        .frame(width: 30, height: 30)
                    Text("Mit Facebook anmelden")
                        .bold()
                }
                .padding(.bottom, 150)
            }
            
            Button {
                self.isPresented.toggle()
                
            } label: {
                Text("Zurück zur Anmeldung")
            }
            .fullScreenCover(isPresented: $isPresented, content: {
                LoginView()
            })
        }
        .padding()
    }
    
}
struct RecoverPasswordWithEmailView_Previews: PreviewProvider {
    static var previews: some View {
        RecoverPasswordWithEmailView()
    }
}
