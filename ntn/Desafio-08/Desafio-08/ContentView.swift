//
//  ContentView.swift
//  Desafio-08
//
//  Created by Turma01-3 on 28/10/25.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State private var locationData: Location = dataLocations[0]
    
    @State private var position: MapCameraPosition =  .region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: dataLocations[0].lat, longitude: dataLocations[0].long),
            span: MKCoordinateSpan(latitudeDelta: 2, longitudeDelta: 2)
        )
    )

    @State private var showingSheet = false
    @State private var showingLocationPicker = false
    
    
    var body: some View {
        ZStack {
            VStack {
                Map(position: $position, interactionModes: [.all, .zoom]) {
                    ForEach(dataLocations, id: \.self) { location in
                        Annotation(location.name, coordinate:CLLocationCoordinate2D(latitude: location.lat, longitude: location.long)) {
                            
                            Button(action: {
                                showingSheet.toggle()
                                showingLocationPicker.toggle()
                            }){
                                Image(systemName: "mappin")
                                .resizable()
                                .scaledToFit()
                                .foregroundStyle(.white)
                                .padding()
                                .background(.black)
                                .clipShape(Circle())
                            }
                            .sheet(isPresented: $showingSheet) {
                                SheetView(location: locationData)
                                
                            }
            
                            Text(location.name)
                                .font(.headline)
                                .foregroundStyle(.black)
                        }
                    }
                }.ignoresSafeArea()
            }
            
            VStack {
                VStack {
                    Picker("Name", selection: $locationData) {
                        ForEach(dataLocations, id: \.self) { locationD in
                            Text(locationD.name)
                                .tag(locationData.name)
                        }
                    }
                    .pickerStyle(.menu)
                    .onChange(of: locationData) {
                        print(locationData.name)
                        position = .region(
                            MKCoordinateRegion(
                                center: CLLocationCoordinate2D(latitude: locationData.lat, longitude: locationData.long),
                                span: MKCoordinateSpan(latitudeDelta: 2, longitudeDelta: 2)
                            )
                        )
                    }
                }
                .background(.white)
                .cornerRadius(2.0)
                .padding(.top, 8)
                
                Spacer()
                
                VStack {
                    Text("Maravilhas do Mundo Moderno").padding()
                }
                .background(.white)
                .cornerRadius(2.0)
                .padding(.bottom, 8)
            }
        }
    }
}

#Preview {
    ContentView()
}
