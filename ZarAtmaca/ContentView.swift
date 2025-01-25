//
//  ContentView.swift
//  ZarAtmaca
//
//  Created by ömer fatih uyar on 21.01.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var 	leftDicelNumber = 1
    @State private var rightDicelNumber = 1
    @State private var isLoginPageActive = false
    
    var body: some View {
        NavigationStack{
            ZStack{
                Image("background")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                VStack (alignment: .center, spacing: 50){
                    Image("logo")
                        .resizable()
                        .frame(width: 200, height: 200)
                    Text("Kumarı Daima Oynatan Kazanır")
                        .foregroundStyle(.white)
                        .font(.headline)
                    
                    HStack{
                        ZarView(n : leftDicelNumber)
                        ZarView(n : rightDicelNumber)
                    }
                    Button(action : {
                        
                        leftDicelNumber = .random(in: 1...6)
                        rightDicelNumber = .random(in: 1...6)
                        
                    }){
                        Text("Zar At")
                            .font(.title)
                            .frame(width: 200, height: 90)
                            .padding()
                            .background(.white)
                            .cornerRadius(20)
                            .padding()
                    }
                    NavigationLink(destination: LoginPage()){
                        Text("Status")
                            .font(.title)
                            .frame(width: 100, height: 40)
                            .padding()
                            .background(.white)
                            .cornerRadius(40)
                    }

                }
                
            }
        }
     
    }
}

struct ZarView: View {
    
    let n  : Int
    
    var body: some View {
        Image("zar\(n)")
            .resizable()
            .frame(width: 150, height: 150)
    }
}


#Preview {
    ContentView()
}

