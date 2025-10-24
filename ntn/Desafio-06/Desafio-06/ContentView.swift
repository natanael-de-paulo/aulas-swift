//
//  ContentView.swift
//  Desafio-06
//
//  Created by Turma01-3 on 24/10/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showingSheet = false
    
    var body: some View {
        NavigationStack{
            VStack {
                NavigationLink {
                    Mode1View(data: PersonData(firstName: "Carlos", lastName: "Juvenal"))
                } label: {
                    Text("Modo 1") // The label the user tapss
                        .foregroundColor(.white)
                        .padding(.vertical, 16)
                        .padding(.horizontal, 32)
                        .background(.pink)
                        .cornerRadius(6.0)
                }
                
                NavigationLink {
                    Mode1View(data: PersonData(firstName: "Carlos", lastName: "Juvenal"))
                } label: {
                    Text("Modo 2") // The label the user tapss
                        .foregroundColor(.white)
                        .padding(.vertical, 16)
                        .padding(.horizontal, 32)
                        .background(.pink)
                        .cornerRadius(6.0)
                }
            
                Button("Mode 3") {
                    showingSheet.toggle() // Toggle the state to present/dismiss the sheet
                }
                .foregroundColor(.white)
                .padding(.vertical, 16)
                .padding(.horizontal, 32)
                .background(.pink)
                .cornerRadius(6.0)
                .sheet(isPresented: $showingSheet) {
                    Mode3View() // The view to present as a sheet
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
