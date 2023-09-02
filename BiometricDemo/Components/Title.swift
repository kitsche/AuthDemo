//
//  Title.swift
//  BiometricDemo
//
//  Created by John Suman on 2023/09/02.
//

import SwiftUI

struct Title: View {
    var body: some View {
        Text("Authenticator")
            .bold()
            .font(.title)
            .foregroundColor(.white)
    }
}

#Preview {
    Title()
        .background(LinearGradient(colors: [.pink, .blue], startPoint: .topLeading, endPoint: .bottomTrailing))
}
