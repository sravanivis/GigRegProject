//
//  ArtistSide.swift
//  GigRegProject
//
//  Created by Sravani Viswanadha on 5/4/23.
//

import SwiftUI
import MapKit

struct ArtistSide: View {
    @State private var location = ""
    @State private var locationImportance: Double = 0.5

    var body: some View {
        VStack{
            Image("gigregsticker")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100, alignment: .center)
                .foregroundColor(.accentColor)
            
            
            Text("Where do you want to perform?")
                .padding(.bottom, 60)
            TextField("Enter Location", text: $location)
            
            
            Text("How important is location to you?")
            Slider(value: $locationImportance)
                .padding(.horizontal)
            
            MapView(coordinate: CLLocationCoordinate2D(latitude: 37.7694, longitude: -122.4862))
                .frame(height: 300)
            
            NavigationLink(destination: ArtistHomepage()) {
                Text("Enter")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.top, 30)
        }
    }
}

struct ArtistSide_Previews: PreviewProvider {
    static var previews: some View {
        ArtistSide()
    }
}
