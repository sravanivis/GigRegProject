//
//  GigsPage.swift
//  GigRegProject
//
//  Created by Thant Soe on 5/22/23.
//

import SwiftUI

struct GigsPage: View {
    let username: String
    let upcomingGigs: [String]
    @State private var selectedTab: Tab = .home
    
    enum Tab {
        case home
        case profile
        case bookedGigs
    }
    
    var body: some View {
        VStack {
            HStack {
                Text("Hi \(username)")
                    .font(.largeTitle)
                    .bold()
                Spacer()
            }
            .padding(.leading)
            
            Text("Check out new gigs and upcoming gigs")
                            .font(.headline)
                            .padding(.leading)
                            .padding(.bottom, 20)
            
            HStack {
                Text("Upcoming Gigs")
                    .font(.headline)
                Spacer()
            }
            .padding(.leading)
            
            VStack(alignment: .leading) {
                ForEach(upcomingGigs, id: \.self) { gig in
                    Text(gig)
                        .font(.body)
                        .padding(.bottom, 5)
                }
            }
            .padding(.leading)
            
            Text("Beach Bar Live Concert")
                .font(.title)
                .padding()
            
            // Add additional stuff for the Beach Bar Live Concert
            
            TabView(selection: $selectedTab) {
                Text("Home View")
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                    .tag(Tab.home)
                
                Text("Profile View")
                    .tabItem {
                        Label("Profile", systemImage: "person")
                    }
                    .tag(Tab.profile)
                
                VStack {
                    Text("Booked Gigs View")
                        .font(.title)
                        .padding()
                    
                }
                .tabItem {
                    Label("Booked Gigs", systemImage: "list.bullet")
                }
                .tag(Tab.bookedGigs)
            }
            .accentColor(.blue)
        }
    }
}
