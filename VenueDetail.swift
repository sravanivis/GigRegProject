//
//  VenueDetail.swift
//  GigRegProject
//
//  Created by Thant Soe on 5/9/23.
//

import SwiftUI

struct VenueDetail: View {
    let venue: Venue
    @State private var showContactAlert = false
    
    var body: some View {
        VStack {
            Image(venue.image)
                .resizable()
                .scaledToFit()
            Text(venue.name)
            NavigationLink(destination: ConfirmView()) {
                Text("Book Now")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.bottom, 20)
            Button(action: {
                showContactAlert = true
            }) {
                Text("Contact the Venue")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .alert(isPresented: $showContactAlert) {
                Alert(title: Text("Contact Information"), message: Text("You can reach the venue at 123-456-7890."), dismissButton: .default(Text("Got it!")))
            }
        }
        .navigationTitle(venue.name)
    }
}

struct VenueDetail_Previews: PreviewProvider {
    static var previews: some View {
        VenueDetail(venue: Venue(name: "Venue 1", image: "venue1"))
    }
}
