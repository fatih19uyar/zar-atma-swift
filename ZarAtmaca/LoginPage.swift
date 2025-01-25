//
//  LoginPage.swift
//  ZarAtmaca
//
//  Created by ömer fatih uyar on 26.01.2025.
//

import SwiftUI

struct LoginPage: View {
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            VStack {
                Text("Login Page")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()

                Text("Giriş yapmak için kullanıcı bilgilerinizi giriniz.")
                    .foregroundColor(.white)
                    .padding()
            }
        }
    }
}

#Preview {
    LoginPage()
}
