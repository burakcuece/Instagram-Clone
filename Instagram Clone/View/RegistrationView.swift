//
//  RegistrationView.swift
//  Instagram Clone
//
//  Created by Burak Cüce on 13.06.22.
//

import SwiftUI

struct RegistrationView: View {
    
    @State var index = 0
    @Namespace var name
    @State var showSheet = false
    
    
    var body: some View {
        
        NavigationView {
            VStack {
                VStack {
                    
                    Text("Telefonnummer oder E-Mail-")
                        .font(.system(size: 25))
                        .fontWeight(.medium)
                    Text("Adresse eingeben")
                        .font(.system(size: 25))
                        .fontWeight(.medium)
                }
                .padding()
                Spacer()
                
                HStack(spacing: 0) {
                    
                    
                    Button(action: {
                        
                        withAnimation(.spring()) {
                            
                            index = 0
                        }
                        
                    }) {
                        VStack {
                            
                            Text("Telefon")
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
                            
                            Text("E-Mail-Adresse")
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
                    
                    RegistrationViewPhone()
                } else {
                    RegistrationViewMail()
                }
            }
            .navigationBarItems(leading: Button(action: {
                self.showSheet = true
            }, label: {
                Image(systemName: "chevron.left")
                    .foregroundColor(Color.black)
            }))
            .sheet(isPresented: self.$showSheet) {
                LoginView()
            }
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
