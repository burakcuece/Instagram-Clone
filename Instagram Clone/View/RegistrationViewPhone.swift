//
//  RegistrationViewPhone.swift
//  Instagram Clone
//
//  Created by Burak Cüce on 13.06.22.
//

import SwiftUI

struct RegistrationViewPhone: View {
    
    @State private var isPresented = false
    
    var body: some View {
        
        ZStack {
            VStack {
                Spacer()
                                
                NumberField()
                
                Button {
                    print("Weiter")
                } label: {
                    Text("Weiter")
                        .font(.system(size: 15))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .frame(width: UIScreen.main.bounds.width - 60)
                        .background(Color.blue.opacity(0.8))
                        .cornerRadius(8)
                }
                
                Text("Wir schicken dir aus Sicherheitsgründen und zur")
                    .font(.subheadline)
                Text("Anmeldung eventuell Benachrichtigungen per SMS")
                    .font(.subheadline)
                
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
            }
        }
        .padding()
    }
}

struct RegistrationViewPhone_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationViewPhone()
            
    }
}
