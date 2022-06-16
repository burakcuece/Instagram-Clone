//
//  RegistrationMainView.swift
//  Instagram Clone
//
//  Created by Burak Cüce on 12.06.22.
//
import SwiftUI

struct RegistrationMainView: View {
    
    @State var phone_email = ""
    @State var first_lastname = ""
    @State var username = ""
    @State var password = ""
    @State private var isPresented = false

    
    var body: some View {
        ZStack {
            
            VStack(alignment: .center) {
                Spacer()
                
                VStack {
                    Image("Instagram-text")
                        .resizable()
                        .frame(width: 200, height: 80)
                    
                    Text("Registriere dich, um die Fotos und Videos")
                        .fontWeight(.heavy)
                        .foregroundColor(.black.opacity(0.6))
                    Text("deiner Freunde zu sehen.")
                        .fontWeight(.heavy)
                        .foregroundColor(.black.opacity(0.6))
                }
                .padding(.bottom,100)
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
                    .padding()
                
                Button {
                    print("Mit Telfonnumer oder E-Mail registrieren")
                } label: {
                    Text("Mit Telefonnummer oder E-Mail registrieren")
                        .font(.system(size: 15))
                        .bold()
                }
                .padding(.bottom, 100)
                
                Spacer()
                
                VStack {
                    
                    Button {
                        print("Impressum/AGB/NetzDG")
                    } label: {
                        Text("Impressum/AGB/NetzDG")
                            .foregroundColor(.black.opacity(0.7))
                            .padding()
                        
                        
                    }
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
                    
                }
            }
        }
    }
}

struct RegistrationMainView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationMainView()
        
    }
}

