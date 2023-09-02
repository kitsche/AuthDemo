//
//  ContentView.swift
//  BiometricDemo
//
//  Created by John Suman on 2023/09/02.
//

import SwiftUI

struct ContentView: View {
    @StateObject var biometricManager = BiometricManager()
    var body: some View {
        VStack {
            LoginView()
                .environmentObject(biometricManager)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    ContentView()
}
