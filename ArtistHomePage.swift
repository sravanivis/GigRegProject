//
//  ArtistHomePage.swift
//  GigRegProject
//
//  Created by Thant Soe on 5/9/23.
//


import SwiftUI

struct Venue {
    let name: String
    let image: String
}

struct ArtistHomepage: View {
    let venues: [Venue] = [
        Venue(name: "Venue 1", image: "venue1"),
        Venue(name: "Venue 2", image: "venue2"),
        Venue(name: "Venue 3", image: "venue3"),
        Venue(name: "Venue 4", image: "venue4")
        
    ]
    
    var body: some View {
        List(venues, id: \.name) { venue in
            NavigationLink(destination: VenueDetail(venue: venue)) {
                Text(venue.name)
            }
        }
        .navigationTitle("Venues")
    }
}

struct ArtistHomepage_Previews: PreviewProvider {
    static var previews: some View {
        ArtistHomepage()
    }
}
