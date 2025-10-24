//
//  ContentView.swift
//  Desafio-05
//
//  Created by Turma01-3 on 24/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack{
                TabView {
                    PinkView()
                        .tabItem { Label(
                            title: { Text("Paint Brush") },
                            icon: { Image(systemName: "paintbrush.fill")}
                        )}
                    
                    BlueView()
                        .tabItem { Label(
                            title: { Text("Paint Brush Pointed") },
                            icon: { Image(systemName: "paintbrush.pointed.fill") }
                        )}
                    
                    GrayView()
                        .tabItem { Label(
                            title: { Text("Paint Palette") },
                            icon: { Image(systemName: "paintpalette.fill") }
                        )}
                    
                    ListView()
                        .tabItem { Label(
                            title: { Text("List") },
                            icon: { Image(systemName: "list.bullet") }
                    )}
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
