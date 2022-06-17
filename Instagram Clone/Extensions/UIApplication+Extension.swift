//
//  UIApplication+Extension.swift
//  Instagram Clone
//
//  Created by Burak Cüce on 17.06.22.
//

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
