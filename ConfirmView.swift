//
//  ConfirmView.swift
//  GigRegProject
//
//  Created by Thant Soe on 5/22/23.
//

import SwiftUI

struct ConfirmView: View {
    @State private var isBookingConfirmed = false
    
    var body: some View {
        VStack {
            Text("Booking Confirmation")
                .font(.largeTitle)
                .padding(.bottom, 50)
            
            Text("You are about to book the venue.")
                .font(.title2)
                .padding(.bottom, 30)
            
            Text("Payment information and details will go here.")
                .padding(.bottom, 30)
            
            Button(action: {
                isBookingConfirmed = true
            }) {
                Text("Confirm Booking")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .sheet(isPresented: $isBookingConfirmed) {
            GigsPage(username: "srav", upcomingGigs: ["Beach Bar Live Concert"])
        }
    }
}
