//
//  ContentView.swift
//  Desafio-10
//
//  Created by Turma01-3 on 03/11/25.
//

import SwiftUI
import AVFoundation
import Translation

struct ContentView: View {
    @State private var texto: String = "";
    @State var showTranslation = false
    
    let synthesizer = AVSpeechSynthesizer()
    var body: some View {
        NavigationStack {
            VStack (alignment: .leading){
                ForEach(cardapio, id: \.self) { burger in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(burger.nome)
                                .font(.headline)
                                .fontWeight(.semibold)
                            
                            
                            Text(burger.ingredientes.joined(separator: ", "))
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                            
                            
                            Text(String(format: "R$ %.2f", burger.preco))
                                .font(.caption)
                                .foregroundColor(.gray)
                            
                        }
                        Spacer()
                        
                        Button(action: {
                            setarTexto("Hamburguer \(burger.nome)")
                            falarTexto()
                            setarTexto("Os ingredientes são formados por: ")
                            falarTexto()
                            setarTexto(burger.ingredientes.joined())
                            falarTexto(rate: 0.1)
                            setarTexto("O preço é: \(burger.preco)")
                            falarTexto(rate: 0.2)
                            
                        }) {
                            Image(systemName: "mic.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 24, height: 24) //
                        }
                        
                        Button {
                            setarTexto("teste")
                            showTranslation.toggle()
                        } label: {
                            Image(systemName: "translate")
                        }
                    }
                    .padding(8)
                }

            }
            .translationPresentation(isPresented: $showTranslation, text: texto)
            .navigationTitle("🍔 Cardápio")
            
        }
    }
    
    private func setarTexto(_ novoTexto: String) {
            texto = novoTexto
    }

    private func falarTexto(voiceLang: String = "pt-BR", rate: Float = 0.5) {
        guard !texto.isEmpty else { return }

        let utterance = AVSpeechUtterance(string: texto)
        utterance.voice = AVSpeechSynthesisVoice(language: voiceLang)
        utterance.rate = rate

        synthesizer.speak(utterance)
    }
}

#Preview {
    ContentView()
}
