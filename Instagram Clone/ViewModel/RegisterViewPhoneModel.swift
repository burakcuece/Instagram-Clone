//
//  RegisterViewPhoneModel.swift
//  Instagram Clone
//
//  Created by Burak Cüce on 18.06.22.
//

import Foundation

class RegisterViewPhoneModel: ObservableObject {
    
    @Published var credentials = Credentials()
    @Published var showProgressView = false
    
    var registerDisabled: Bool {
        credentials.phone.isEmpty
    }
    
    func login(completion: @escaping (Bool) -> Void) {
        showProgressView = true
        APIService.shared.login(credentials: credentials) { [unowned self] (result: Result<Bool, APIService.APIError>) in
            showProgressView = false
            switch result {
            case .success:
                completion(true)
            case .failure:
                credentials = Credentials()
                completion(false)
            }
        }
    }
}
