//
//  NumberField.swift
//  Instagram Clone
//
//  Created by Burak Cüce on 12.06.22.
//

import SwiftUI
import iPhoneNumberField

struct NumberField: View {
    
    @StateObject private var registerVM = RegisterViewPhoneModel()
    @EnvironmentObject var authentication: Authentication
    @State var isEditing: Bool = false
    
    var body: some View {
        iPhoneNumberField("(000) 000-0000", text: $registerVM.credentials.phone, isEditing: $isEditing)
            .flagHidden(false)
            .flagSelectable(true)
            .font(UIFont(size: 30, weight: .light, design: .monospaced))
            .maximumDigits(10)
            .clearButtonMode(.whileEditing)
            .onClear { _ in isEditing.toggle() }
            .padding()
            .background(Color.gray.opacity(0.1))
            .cornerRadius(0.5)
            .padding()
        
    }
}

struct NumberField_Previews: PreviewProvider {
    static var previews: some View {
        NumberField()
    }
}
