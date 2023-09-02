//
//  LoginView.swift
//  BiometricDemo
//
//  Created by John Suman on 2023/09/03.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var biometricManager: BiometricManager
    var body: some View {
        VStack(spacing: 30) {
            Title()
            
            switch
            biometricManager.biometryType {
            case .faceID:
                PrimaryButton(image: "faceid", title: "Login with FaceID")
            case .touchID:
                PrimaryButton(image: "touchid", title: "Login with TouchID")
            default:
                PrimaryButton(image: "person.fill", title: "Login with your credentials")
            }
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(LinearGradient(colors: [.pink, .blue], startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}

#Preview {
    LoginView()
        .environmentObject(BiometricManager())
}
