//
//  SheetView.swift
//  Desafio-08
//
//  Created by Turma01-3 on 28/10/25.
//

import SwiftUI

struct SheetView: View {
    @State var location: Location
    
    var body: some View {
        
        VStack {
            GeometryReader { geometry in
                
                AsyncImage(url: URL(string: "\(location.photo)")){ image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                        .progressViewStyle(.circular)
                        .tint(.white)
                }
                .overlay(
                    RoundedRectangle(cornerRadius: 0)
                        .stroke(Color.black, lineWidth: 2)
                        .frame(width: geometry.size.width * 0.85, height: geometry.size.width * 0.7)
                )
                .frame(width: geometry.size.width * 0.7, height: geometry.size.width * 0.6)
                .position(x: geometry.size.width / 2, y: geometry.size.height / 4.5)
                
                Text("\(location.name)").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .font(.title)
                    .bold()
                    .foregroundColor(.brown)
                    .position(x: geometry.size.width / 2, y: geometry.size.height / 2.2)
                
                
                VStack {
                    Text("\(location.description)").frame(minHeight: geometry.size.height / 5, alignment: .top)
                        .padding(16)
                }.frame(minWidth: geometry.size.width / 1.2, maxWidth: geometry.size.width / 1.2)
                    .background(.brown)
                    .position(x: geometry.size.width / 2, y: geometry.size.height * 0.65)

            }
            
        }
    }
}

#Preview {
    SheetView(location: Location(name: "Preview", photo: "https://lh3.googleusercontent.com/gps-cs-s/AG0ilSyTjWDDu8bGLkVWxZi7u1IAPCmO8pMo6Hb3g7L2N2RZB56dU3OpvFVmfMeJ-Y7PkfOkGkTbWFnHiez1XrGwLsNMUGWRxgryUF56ljI-bscnaoM5G26L10qgDucwywbc6d25jSA8=w270-h312-n-k-no", description: "Preview", lat: 1.0, long: 1.0))
}
