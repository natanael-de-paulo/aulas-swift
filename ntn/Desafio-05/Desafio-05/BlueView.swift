//
//  BlueView.swift
//  Desafio-05
//
//  Created by Turma01-3 on 24/10/25.
//

import SwiftUI

struct BlueView: View {
    var body: some View {
        VStack {
            VStack {
                Image(systemName: "paintbrush.pointed.fill")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.blue)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            }
            .frame(width: 240, height: 240)
            .background(.black)
            .clipShape(.circle)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(.blue)
        .padding(.bottom, 16)
    }
}

#Preview {
    BlueView()
}
