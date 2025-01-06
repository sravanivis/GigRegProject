//
//  PostSignUp.swift
//  GigRegProject
//
//  Created by Sravani Viswanadha on 5/4/23.
//

import SwiftUI

struct PostSignUp: View {
    var body: some View {
        NavigationStack{
            VStack {
                Image("gigregsticker")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200, alignment: .center)
                    .foregroundColor(.accentColor)
                Text("What are you looking for?")
                    .font(.title)
                    .padding(.bottom, 60.0)
                Button(action: {}) {
                    NavigationLink {
                        ArtistSide()
                    } label: {
                        Text("I'm an artist looking for venues")
                            .padding(10) // Adjust padding here
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
                .padding(.bottom, 60.0)
                Button(action: {}) {
                    NavigationLink {
                        Image("gigregsticker")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200, alignment: .center)
                            .foregroundColor(.accentColor)
                        Text("We have not created functionality for this part. Please go back and click on 'I'm an artist looking for venues'!")
                    } label: {
                        Text("I'm a venue looking for artists")
                            .padding(10) // Adjust padding here
                            .background(Color.blue) // Change color to blue
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
            }
        }
    }
}

struct PostSignUp_Previews: PreviewProvider {
    static var previews: some View {
        PostSignUp()
    }
}
