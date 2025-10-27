//
//  SongView.swift
//  Desafio-07
//
//  Created by Turma01-3 on 27/10/25.
//

import SwiftUI

struct MusicView: View {
    @State var musicId: Int;
    
    var body: some View {
        let listMusic: [Music] = musics
        @State var music = listMusic.first(where: { $0.id == musicId})
        
        GeometryReader {
            geometry in
            VStack(alignment: .center) {
                AsyncImage(url: URL(string: "\(music!.capa)")){ image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                        .progressViewStyle(.circular)
                        .tint(.white)
                }.frame(width: geometry.size.width * 0.5, height: geometry.size.width * 0.5)
                
                VStack(alignment: .center) {
                    Text("\(music!.name)").font(.largeTitle)
                    Text("\(music!.artist)").font(.title3)
                }.padding(.top, 16)
                    .foregroundColor(.white)
                
                
                HStack {
                    Image(systemName: "shuffle")
                        .padding(.horizontal, 32)
                    
                    HStack {
                        Button(action: {
                            if musicId == 1 {
                                musicId = listMusic.count
                            } else {
                                musicId = musicId - 1
                            }
                        }, label: {
                            Image(systemName: "backward.end.fill")
                                .resizable()
                                .frame(width: 24, height: 24)
                        })
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image(systemName: "play.fill")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .padding(.horizontal, 32)
                        })
                        
                        Button(action: {
                            if musicId == listMusic.count {
                                musicId = 1
                            } else { musicId = musicId + 1}
                        }, label: {
                            Image(systemName: "forward.end.fill")
                                .resizable()
                                .frame(width: 24, height: 24)
                        })
                    }
                    
                    Image(systemName: "repeat")
                        .padding(.horizontal, 32)
                    
                }.foregroundColor(.white).padding(.top, 32)
            }
            .frame(width: geometry.size.width * 0.5, height: geometry.size.width * 0.5)
                .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
                .background(LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom))
                    .edgesIgnoringSafeArea(.all)
        }
    }
}

#Preview {
    MusicView(musicId: 1)
}
