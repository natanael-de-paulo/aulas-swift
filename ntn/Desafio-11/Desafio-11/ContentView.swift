//
//  ContentView.swift
//  Desafio-11
//
//  Created by Turma01-3 on 04/11/25.
//

import SwiftUI
import GoogleGenerativeAI

struct Message: Identifiable {
    let id = UUID()
    let text: String
    let isUser: Bool
}

struct ContentView: View {
    let model = GenerativeModel(name: "gemini-2.5-flash", apiKey: APIKey.default)
    
    @State private var messages: [Message] = [
        Message(text: "Olá! Eu sou sua IA assistente. Como posso ajudar hoje?", isUser: false)
    ]
    @State private var textInput: String = ""
    @State private var isLoading: Bool = false
    
    func sendMessage() {
        guard !textInput.trimmingCharacters(in: .whitespaces).isEmpty else { return }
        
        let userMessage = Message(text: textInput, isUser: true)
        messages.append(userMessage)
        let userText = textInput
        textInput = ""
        isLoading = true
        
        Task {
            do {
                let response = try await model.generateContent(userText)
                guard let text = response.text else {
                    messages.append(Message(text: "Desculpe, não consegui processar isso 😅", isUser: false))
                    isLoading = false
                    return
                }
                
                let aiMessage = Message(text: text, isUser: false)
                messages.append(aiMessage)
            } catch {
                messages.append(Message(text: "Erro: \(error.localizedDescription)", isUser: false))
            }
            isLoading = false
        }
    }
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Image(systemName: "brain.head.profile")
                    .font(.system(size: 30))
                    .foregroundColor(.blue)
                Text("Chat com IA")
                    .font(.title2)
                    .fontWeight(.semibold)
                Spacer()
            }
            .padding()
            .background(Color(.systemGray6))
            ScrollView {
                ScrollViewReader { proxy in
                    LazyVStack(spacing: 12) {
                        ForEach(messages) { message in
                            HStack {
                                if message.isUser {
                                    Spacer()
                                    Text(message.text)
                                        .padding(10)
                                        .background(Color.blue)
                                        .foregroundColor(.white)
                                        .cornerRadius(12)
                                        .frame(maxWidth: 250, alignment: .trailing)
                                } else {
                                    Text(message.text)
                                        .padding(10)
                                        .background(Color(.systemGray5))
                                        .foregroundColor(.primary)
                                        .cornerRadius(12)
                                        .frame(maxWidth: 250, alignment: .leading)
                                    Spacer()
                                }
                            }
                            .id(message.id)
                            .padding(.horizontal)
                        }
                        .onChange(of: messages.count) { _, newValue in
                            withAnimation {
                                proxy.scrollTo(messages.last!.id, anchor: .bottom)
                            }
                        }
                        
                        if isLoading {
                            HStack {
                                ProgressView()
                                    .progressViewStyle(CircularProgressViewStyle())
                                    .scaleEffect(1.2)
                                Spacer()
                            }
                            .padding(.horizontal)
                        }
                    }
                    .padding(.vertical)
                }
                
            }
            
            HStack {
                TextField("Digite sua mensagem...", text: $textInput)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .disabled(isLoading)
                
                Button(action: sendMessage) {
                    if isLoading {
                        ProgressView()
                            .progressViewStyle(CircularProgressViewStyle(tint: .white))
                    } else {
                        Image(systemName: "paperplane.fill")
                            .font(.system(size: 18))
                    }
                }
                .padding(10)
                .background(isLoading ? Color.gray : Color.blue)
                .foregroundColor(.white)
                .clipShape(Circle())
                .disabled(isLoading)
            }
            .padding()
            .background(Color(.systemGray6))
        }
        .background(Color(.systemGroupedBackground))
        .ignoresSafeArea(.keyboard, edges: .bottom)
    }
}

#Preview {
    ContentView()
}
