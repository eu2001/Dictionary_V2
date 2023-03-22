//
//  UIApplication.swift
//  Dictonary_V2
//
//  Created by Eric Sousa on 3/14/23.
//

import Foundation

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}
