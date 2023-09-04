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
        NavigationView {
            VStack {
                if biometricManager.isAuthenticated {
                    VStack(spacing: 40) {
                        Title()
                        
                        Text("Welcome, you're now logged in")
                        
                        PrimaryButton(showImage: false, title: "Logout")
                            .onTapGesture {
                                biometricManager.logout()
                            }
                            .foregroundColor(.blue)
                    }
                    .foregroundColor(.white)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
                    .background(LinearGradient(colors: [.pink, .blue], startPoint: .topLeading, endPoint: .bottomTrailing))
                } else {
                    LoginView()
                        .environmentObject(biometricManager)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
            .alert(isPresented: $biometricManager.showAlert) {
                Alert(title: Text("Error"), message: Text(biometricManager.errorDescription ?? "Error trying to login with credentials, please try again"), dismissButton: .default(Text("OK")))
        }
        }
        }
    }
    
    #Preview {
        ContentView()
    }
