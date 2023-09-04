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
        .alert(isPresented: $biometricManager.showAlert) {
            Alert(title: Text("Error"), message: Text(biometricManager.errorDescription ?? "Error trying to login with credentials, please try again"), dismissButton: .default(Text("OK")))
            }
        }
    }
    
    #Preview {
        ContentView()
    }
