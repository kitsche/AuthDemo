//
//  BiometricManager.swift
//  BiometricDemo
//
//  Created by John Suman on 2023/09/03.
//

import Foundation
import LocalAuthentication

class BiometricManager: ObservableObject {
    private(set) var context = LAContext()
    @Published private(set) var biometryType: LABiometryType = .none
    private var canEvaluatePolicy = true
    
    init() {
        getBiometryType()
    }
    
    func getBiometryType() {
        canEvaluatePolicy = context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: nil)
        biometryType = context.biometryType
    }
}
