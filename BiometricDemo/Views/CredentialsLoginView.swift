//
//  CredentialsLoginView.swift
//  BiometricDemo
//
//  Created by John Suman on 2023/09/04.
//

import SwiftUI

struct CredentialsLoginView: View {
    @EnvironmentObject var biometricManager: BiometricManager
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        VStack(spacing: 30) {
            Title()
            
            TextField("User Name", text: $username)
            
            SecureField("Password", text: $password)
            
            PrimaryButton(showImage: false ,title: "Login")
                .onTapGesture {
                    biometricManager.authenticateWithCredentials(username: username, password: password)
                }
        }
        .textFieldStyle(.roundedBorder)
        .padding(.horizontal)
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(LinearGradient(colors: [.pink, .blue], startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}

#Preview {
    CredentialsLoginView()
        .environmentObject(BiometricManager())
}
