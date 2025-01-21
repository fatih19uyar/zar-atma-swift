//
//  ContentView.swift
//  ZarAtmaca
//
//  Created by ömer fatih uyar on 21.01.2025.
//

import SwiftUI

struct ContentView: View {
    @State var 	leftDicelNumber = 1
    @State var rightDicelNumber = 1
    
    var body: some View {
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

