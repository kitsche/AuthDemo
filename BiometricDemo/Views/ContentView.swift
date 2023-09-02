//
//  ContentView.swift
//  BiometricDemo
//
//  Created by John Suman on 2023/09/02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            LoginView()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    ContentView()
}
