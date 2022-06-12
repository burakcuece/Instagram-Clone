//
//  RegistrationView.swift
//  Instagram Clone
//
//  Created by Burak Cüce on 12.06.22.
//
import SwiftUI

struct RegistrationView: View {
    
    @State var phone_email = ""
    @State var first_lastname = ""
    @State var username = ""
    @State var password = ""
    
    var body: some View {
        ZStack {
            
            VStack(alignment: .center) {
                
                Image("Instagram-text")
                    .resizable()
                    .frame(width: 200, height: 80)
                
                Text("Registriere dich, um die Fotos und Videos deiner Freunde zu sehen")
                    .fontWeight(.heavy)
                    .foregroundColor(.black.opacity(0.6))
                
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
                }
                
                Text("ODER")
                    .foregroundColor(Color.gray)
                
                TextField("Handynummer oder E-Mail-Adresse", text: $phone_email)
                    .keyboardType(.emailAddress)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(0.5)
                    .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                    .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: -5)
                
                TextField("Vollständiger Name", text: $first_lastname)
                    .keyboardType(.namePhonePad)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(0.5)
                    .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                    .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: -5)
                
                TextField("Benutzername", text: $username)
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
                
                Button {
                    print("Weiter")
                } label: {
                    Text("Weiter")
                        .font(.system(size: 15))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: UIScreen.main.bounds.width - 30)
                        .background(Color.blue.opacity(0.8))
                        .cornerRadius(8)
                }
                .padding()
                
                HStack {
                    
                    Text("Du hast ein Konto?")
                    Button {
                        print("Melde dich an")
                    } label: {
                        Text("Melde dich an.")
                    }
                    
                }
                .padding()
            }
            .padding()
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}

