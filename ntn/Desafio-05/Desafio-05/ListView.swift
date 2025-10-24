//
//  ListView.swift
//  Desafio-05
//
//  Created by Turma01-3 on 24/10/25.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        VStack {
            Text("List")
            
            List {
                HStack {
                    Text("Item 1")
                    Spacer()
                    Image(systemName: "paintbrush.fill")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .scaledToFit()
                        .foregroundColor(.black)
                }
                
                HStack {
                    Text("Item 1")
                    Spacer()
                    Image(systemName: "paintbrush.pointed.fill")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .scaledToFit()
                        .foregroundColor(.black)
                }
                
                HStack {
                    Text("Item 1")
                    Spacer()
                    Image(systemName: "paintpalette.fill")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .scaledToFit()
                        .foregroundColor(.black)
                }
            }
        }
    }
}

#Preview {
    ListView()
}
