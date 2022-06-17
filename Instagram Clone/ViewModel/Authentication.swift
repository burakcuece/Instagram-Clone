//
//  Authentication.swift
//  Instagram Clone
//
//  Created by Burak Cüce on 17.06.22.
//

import Foundation
import SwiftUI

class Authentication: ObservableObject {
    
    @Published var isValidated = false
    
    func upddateValidation(success: Bool) {
        withAnimation {
            isValidated = success
        }
    }
}
