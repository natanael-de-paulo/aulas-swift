//
//  Mode1View.swift
//  Desafio-06
//
//  Created by Turma01-3 on 24/10/25.
//

import SwiftUI


struct PersonData {
    var firstName: String
    var lastName: String
}


struct Mode1View: View {
    var data: PersonData
    
    var body: some View {
        GeometryReader { geometry in
            
            let center = CGPoint(x: geometry.size.width / 2, y: geometry.size.height / 2)
            
            ZStack {
                VStack{
                    Text("Mode 1")
                }
                .position(CGPoint(x: geometry.size.width / 2, y: geometry.size.height * 0))
                
                VStack{
                    Text("Nome: \(data.firstName)")
                    Text("Sobrenome: \(data.lastName)")
                }
                .frame(width: 240, height: 120)
                .background(.red)
                .position(center)
            }
        }
        .padding()
    }
}

#Preview {
    Mode1View(data: PersonData(firstName: "Preview", lastName: "Preview"))
}
