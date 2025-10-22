//
//  ContentView.swift
//  Desafio-01
//
//  Created by Turma01-3 on 22/10/25.
//

import SwiftUI
struct ContentView1: View {
    var body: some View {
        VStack {
            HStack {
                Rectangle()
                    .fill(.red)
                    .frame(width: 100, height: 100)
                
                Spacer()
                
                Rectangle()
                    .fill(.blue)
                    .frame(width: 100, height: 100)
                
            }
            
            Spacer()
            
            HStack {
                Rectangle()
                    .fill(.green)
                    .frame(width: 100, height: 100)
                
                Spacer()
                
                Rectangle()
                    .fill(.yellow)
                    .frame(width: 100, height: 100)
                
            }
        }
        .padding()
    }
}


struct ContentView2: View {
    var body: some View {
        HStack {
            Image("Image")
                .resizable()
                .scaledToFit()
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
            Spacer()
            
            VStack{
                Text("HackaTruck")
                    .foregroundColor(.red)
                
                Text("77 universidades")
                    .foregroundColor(.blue)
                
                Text("5 Regioes do brasil")
                    .foregroundColor(.yellow)
                }
            }
            
        .padding()
    }
}

#Preview {
    ContentView2()
}
