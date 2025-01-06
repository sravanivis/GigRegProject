//
//  LoadingScreen.swift
//  GigRegProject
//
//  Created by Thant Soe on 5/9/23.
//

import SwiftUI

struct LoadingScreen: View {
    @State private var isLoading = false
    
    var body: some View {
        VStack {
            if isLoading {
                ProgressView()
            } else {
                Image(systemName: "checkmark")
            }
        }
        .onAppear {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                isLoading = false
            }
        }
    }
}
