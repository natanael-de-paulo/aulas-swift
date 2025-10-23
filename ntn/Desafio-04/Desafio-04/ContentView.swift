//
//  ContentView.swift
//  Desafio-04
//
//  Created by Turma01-3 on 23/10/25.
//

import SwiftUI

struct ContentView: View {
    @State private var valueKm: Double = 0
    @State private var valueH: Double = 0
    @State private var resultValue: Double = 0
    @State private var backgroudColor: Color = Color.gray
    
    var body: some View {
        VStack(alignment: .center) {
            VStack {
                Text("Digite a distância (km): ")
                    .padding(.top, 10)
                TextField("Valor em Km", value: $valueKm, format: .number)
                    .frame(width: 180, height: 32)
                    .multilineTextAlignment(.center)
                    .background(.white)
                    .cornerRadius(4)
                    .padding(.top, 10)
                
                Text("Digite o tempo (h): ")
                    .padding(.top, 10)
                TextField("Valor em H", value: $valueH, format: .number)
                    .frame(width: 180, height: 32)
                    .multilineTextAlignment(.center)
                    .background(.white)
                    .cornerRadius(4)
                    .padding(.top, 10)
                
                Button("Calcular") {
                    resultValue = valueKm / valueH
                    
                    if resultValue > 0 && resultValue < 9.9 {
                        backgroudColor = Color.verdeClaro
                    }
                    
                    if resultValue > 10 && resultValue < 29.9 {
                        backgroudColor = Color.verdeClaro
                    }
                    
                    if resultValue > 30 && resultValue < 69.9 {
                        backgroudColor = Color.verdeClaro
                    }
                    
                    if resultValue > 70 && resultValue < 89.9 {
                        backgroudColor = Color.verdeClaro
                    }
                    
                    if resultValue > 90 && resultValue < 130.00 {
                        backgroudColor = Color.verdeClaro
                    }
                }
                .frame(width: 86, height: 32)
                .foregroundColor(.white)
                .background(.black)
                .cornerRadius(4)
                .padding(.top, 10)
            }.padding()
            
            VStack {
                Text("\(String(format: "%.2f", resultValue))")
                
                AsyncImage(url: URL(string: "https://img.freepik.com/psd-gratuitas/a-red-3d-question-mark-on-a-transparent-background_84443-55795.jpg?semt=ais_hybrid&w=740&q=80")) { image in
                    image
                        .image?.resizable()
                        .aspectRatio(contentMode: .fit) // or .fill
                        .frame(width: 200, height: 150)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .padding(.top, 8)
                }
            }.padding(.top, 32)
            
            Spacer()
            
            VStack {
                HStack{
                    Text("Tartaruga (0 - 9.9km/h)").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).font(.custom("20", fixedSize: 20))
                    Circle()
                        .frame(width: 16)
                        .colorMultiply(.verdeClaro)
                }
                HStack{
                    Text("Elefante (10 - 29.9km/h)").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).font(.custom("20", fixedSize: 20))
                    Circle().frame(width: 16).colorMultiply(.azulClaro)
                }
                HStack{
                    Text("Avestruz (30 - 69.9km/h)").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).font(.custom("20", fixedSize: 20))
                    Circle().frame(width: 16).colorMultiply(.laranjaClaro)
                }
                HStack{
                    Text("Leão (70 - 89.9km/h)").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).font(.custom("20", fixedSize: 20))
                    Circle().frame(width: 16).colorMultiply(.amareloClaro)
                }
                HStack{
                    Text("Guepardo (90 - 130km/h)").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).font(.custom("20", fixedSize: 20))
                    Circle().frame(width: 16).colorMultiply(.vermelhoClaro)
                }
            }
            .frame(width: 340, height: 200)
                .background(.black)
                .foregroundColor(.white)
                .cornerRadius(20)
                .padding()
            
        }
        .frame(maxWidth: .infinity)
        .background((backgroudColor))
    }
}

#Preview {
    ContentView()
}
