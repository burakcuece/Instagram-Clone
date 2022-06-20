//
//  RecoverPasswordWithPhoneView.swift
//  Instagram Clone
//
//  Created by Burak Cüce on 12.06.22.
//

import SwiftUI
import iPhoneNumberField


struct RecoverPasswordWithPhoneView: View {
    
    @State var phone = ""
    
    var body: some View {
        
        
        VStack {
            
            
            NumberField()
            
            Button {
                print("Weiter")
            } label: {
                Text("Weiter")
                    .font(.system(size: 15))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 20)
                    .background(Color.blue.opacity(0.8))
                    .cornerRadius(8)
                
            }
            
            Button {
                print("Benötigst du weitere Hilfe?")
            } label: {
                Text("Benötigst du weitere Hilfe?")
            }
            .padding()
            
            Text("ODER")
                .foregroundColor(Color.gray)
            
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
                .padding(.bottom, 25)
            }
        }
    }
}


struct RecoverPasswordWithPhoneView_Previews: PreviewProvider {
    static var previews: some View {
        RecoverPasswordWithPhoneView()
    }
}


