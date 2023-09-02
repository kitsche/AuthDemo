//
//  LoginView.swift
//  BiometricDemo
//
//  Created by John Suman on 2023/09/03.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack(spacing: 30) {
            Title()
            
            PrimaryButton(image: "faceid", title: "Login with FaceID")
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(LinearGradient(colors: [.pink, .blue], startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}

#Preview {
    LoginView()
}
