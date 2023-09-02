//
//  PrimaryButton.swift
//  BiometricDemo
//
//  Created by John Suman on 2023/09/03.
//

import SwiftUI

struct PrimaryButton: View {
    var image: String?
    var showImage = true
    var title: String
    
    var body: some View {
        HStack {
            if showImage {
                Image(systemName: image ?? "person.fill" )
            }
            Text(title)
        }
        .padding()
        .padding(.horizontal)
        .background(.white)
        .cornerRadius(30)
        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    PrimaryButton(image: "faceid", title: "Login with FaceID")
}
