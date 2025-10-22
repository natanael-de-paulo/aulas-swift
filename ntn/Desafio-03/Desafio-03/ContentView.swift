//
//  ContentView.swift
//  Desafio-03
//
//  Created by Turma01-3 on 22/10/25.
//

import SwiftUI

struct ContentView: View {
    @State private var username: String = ""
    @State private var alert: Bool = false
    var body: some View {
        VStack {
            ZStack {
                AsyncImage(url: URL(string:  "https://www.unicesumar.edu.br/wp-content/uploads/2022/05/Laboratorio-.jpeg"))
                    .imageScale(.medium)
                    .foregroundStyle(.tint)
                    .opacity(0.3)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                
                VStack {
                    Text("Bem vindo, \(username == "" ? "Visitante" : username)!")
                        .font(.largeTitle)
                    
                    TextField("username", text:$username)
                        .foregroundColor(.black)
                    
                    VStack {
                        AsyncImage(url: URL(string:  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAWNtNcSWBpooHj2vf_XvDXGMI5HQemG3FDA&s"))
                            .imageScale(.medium)
                            .offset()
                            .foregroundStyle(.tint)
                            .opacity(0.7)
                            .padding(.top, 120)
                        Spacer()
                        Button("Entrar") {
                            alert = true
                        }
                        .frame(width: 100, height: 50)
                        .font(.title3)
                        .foregroundColor(.white)
                        .background(.gray)
                        .alert("Important Message", isPresented: $alert) {
                        } message: {
                            Text("This is a simple alert with just a title and message.")
                        }
                    }
                    
                    
                }.padding(80)
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
