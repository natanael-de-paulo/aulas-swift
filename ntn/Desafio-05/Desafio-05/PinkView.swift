//
//  PinkView.swift
//  Desafio-05
//
//  Created by Turma01-3 on 24/10/25.
//

import SwiftUI

struct PinkView: View {
    var body: some View {
        VStack {
            VStack {
                Image(systemName: "paintbrush.fill")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.pink)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            }
            .frame(width: 240, height: 240)
            .background(.black)
            .clipShape(.circle)
        }
        .frame(maxWidth: .infinity, maxHeight: .greatestFiniteMagnitude)
        .background(.pink)
        .padding(.bottom, 16)
    }
}

#Preview {
    PinkView()
}
