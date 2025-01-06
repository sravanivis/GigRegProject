//
//  ContentView.swift
//  GigRegProject
//
//  Created by Sravani Viswanadha on 5/4/23.
//
import SwiftUI

struct ContentView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var age = ""
    @State private var password = ""
    @State private var selectedTab: Tab = .home

    enum Tab {
        case home
        case profile
        case bookedRegs
    }

    var body: some View {
        NavigationView {
            VStack {
                Image("gigregsticker")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200, alignment: .center)
                    .foregroundColor(.accentColor)
                Text("Welcome to GigReg!")
                    .font(.title)
                    .padding(.bottom, 60.0)

                TextField("First Name", text: $firstName)
                    .padding(.bottom)
                TextField("Last Name", text: $lastName)
                    .padding(.bottom)
                TextField("Email", text: $email)
                    .padding(.bottom)
                TextField("Age", text: $age)
                    .padding(.bottom)
                SecureField("Choose Password", text: $password)
                    .padding(.bottom)

                NavigationLink(destination: PostSignUp()) {
                    Text("Next>")
                }
            }
            .padding()
            .tabItem {
                Label("Home", systemImage: "house")
            }
            .tag(Tab.home)
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarHidden(true)
        }
        .accentColor(.blue)
    }
}
