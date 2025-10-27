//
//  ContentView.swift
//  Desafio-07
//
//  Created by Turma01-3 on 27/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    AsyncImage(url: URL(string: "https://www.unoeste.br/site/destaques/images/18814g.jpg")){ image in
                        image.resizable()
                    } placeholder: {
                        ProgressView()
                            .accentColor(.white)
                            .progressViewStyle(.circular)
                    }
                    .frame(width: 200, height: 160)
                    .padding(.top, 120)
                    
                    VStack(alignment: .leading) {
                        Text("HackaFM")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .bold()
                            .padding(.leading, 16)
                        
                        ForEach(musics){ music in
                            HStack(alignment: .center) {
                                AsyncImage(url: URL(string: "\(music.capa)")){ image in
                                    image.resizable()
                                } placeholder: {
                                    ProgressView()
                                        .tint(.white)
                                        .progressViewStyle(.circular)
                                }.frame(width: 72, height: 72)
                                
                                
                                VStack(alignment: .leading) {
                                    Text("\(music.name)").font(.custom("Name", size: 16))
                                    Text("\(music.artist)").font(.custom("artist", size: 14))
                                }
                                
                                Spacer()
                                NavigationLink {
                                    MusicView(musicId: music.id)
                                } label: {
                                    Image(systemName: "ellipsis")
                                        .padding(.vertical, 16)
                                        .padding(.horizontal, 32)
                                        .cornerRadius(6.0)
                                }
                                
                            }
                        }
                        .padding(.horizontal, 8)
                        .frame(minWidth: 100, minHeight: 100)
                    }.padding(.top, 32)
                    
                    
                    Text("Sugeridos")
                    ScrollView(.horizontal) {
                        HStack(alignment: .center){
                            AsyncImage(url: URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzwBP40r7oxk4HuZchBjU4yeWdBiiCs1hAAQ&s")) { image in
                                image
                                    .resizable()
                                    .scaledToFit()
                            } placeholder: {
                                // Your custom placeholder view
                                ProgressView()
                            }
                            .frame(width: 80, height: 80)
                            
                            AsyncImage(url: URL(string: "https://media.gettyimages.com/id/1472837146/pt/v%C3%ADdeo/number-2-blue-and-red-neon-futuristic-effect-trendy-glow-lighting-4k-video-animation.jpg?s=640x640&k=20&c=ApMAa4tfpaCyLPvf0TaiZF0SYnHOVMm7Pb4Hv4m8IwI=")) { image in
                                image
                                    .resizable()
                                    .scaledToFit()
                            } placeholder: {
                                // Your custom placeholder view
                                ProgressView()
                            }
                            .frame(width: 120, height: 120)
                            
                            AsyncImage(url: URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzwBP40r7oxk4HuZchBjU4yeWdBiiCs1hAAQ&s")) { image in
                                image
                                    .resizable()
                                    .scaledToFit()
                            } placeholder: {
                                // Your custom placeholder view
                                ProgressView()
                            }
                            .frame(width: 80, height: 80)
                            
                            AsyncImage(url: URL(string: "https://media.gettyimages.com/id/1472837146/pt/v%C3%ADdeo/number-2-blue-and-red-neon-futuristic-effect-trendy-glow-lighting-4k-video-animation.jpg?s=640x640&k=20&c=ApMAa4tfpaCyLPvf0TaiZF0SYnHOVMm7Pb4Hv4m8IwI=")) { image in
                                image
                                    .resizable()
                                    .scaledToFit()
                            } placeholder: {
                                // Your custom placeholder view
                                ProgressView()
                            }
                            .frame(width: 120, height: 120)
                            
                            AsyncImage(url: URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzwBP40r7oxk4HuZchBjU4yeWdBiiCs1hAAQ&s")) { image in
                                image
                                    .resizable()
                                    .scaledToFit()
                            } placeholder: {
                                // Your custom placeholder view
                                ProgressView()
                            }
                            .frame(width: 80, height: 80)
                            
                            AsyncImage(url: URL(string: "https://media.gettyimages.com/id/1472837146/pt/v%C3%ADdeo/number-2-blue-and-red-neon-futuristic-effect-trendy-glow-lighting-4k-video-animation.jpg?s=640x640&k=20&c=ApMAa4tfpaCyLPvf0TaiZF0SYnHOVMm7Pb4Hv4m8IwI=")) { image in
                                image
                                    .resizable()
                                    .scaledToFit()
                            } placeholder: {
                                // Your custom placeholder view
                                ProgressView()
                            }
                            .frame(width: 120, height: 120)
                        }
                    }
                }
                .foregroundColor(.white)
            }.frame(maxHeight: .infinity) .background(LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom))
                .edgesIgnoringSafeArea(.all)
        }.tint(.white)
    }
}

#Preview {
    ContentView()
}
