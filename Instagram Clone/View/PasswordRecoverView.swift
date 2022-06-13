//
//  PasswordRecoverView.swift
//  Instagram Clone
//
//  Created by Burak Cüce on 12.06.22.
//

import SwiftUI

struct PasswordRecoverView: View {
    
    @State var index = 0
    @Namespace var name
    
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Image(systemName: "lock.circle")
                .resizable()
                .frame(width: 100, height: 100)
                .padding()
            
            Text("Probleme beim Anmelden?")
                .font(.system(size: 25))
                .fontWeight(.medium)
                .padding()
            
            
            HStack(spacing: 0) {
                
                
                Button(action: {
                    
                    withAnimation(.spring()) {
                        
                        index = 0
                    }
                    
                }) {
                    VStack {
                        
                        Text("Benutzername")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(index == 0 ? .black : .gray)
                        
                        ZStack {
                            
                            Capsule()
                                .fill(Color.black.opacity(0.04))
                                .frame(height: 4)
                            
                            if index == 0 {
                                
                                Capsule()
                                    .fill(Color.black)
                                    .frame(height: 4)
                                    .matchedGeometryEffect(id: "Tab", in: name)
                            }
                        }
                    }
                }
                Button(action: {
                    
                    withAnimation(.spring()) {
                        
                        index = 1
                    }
                    
                }) {
                    VStack {
                        
                        Text("Telefon")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(index == 1 ? .black : .gray)
                        
                        
                        ZStack {
                            
                            Capsule()
                                .fill(Color.black.opacity(0.04))
                                .frame(height: 4)
                            
                            if index == 1 {
                                
                                Capsule()
                                    .fill(Color.black)
                                    .frame(height: 4)
                                    .matchedGeometryEffect(id: "Tab", in: name)
                            }
                        }
                    }
                }
            }
            
            if index == 0 {
                
                RecoverPasswordWithEmailView()
            } else {
                RecoverPasswordWithPhoneView()
            }
        }
    }
}

struct PasswordRecoverView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordRecoverView()
    }
}
