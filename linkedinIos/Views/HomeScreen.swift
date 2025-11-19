//
//  HomeScreen.swift
//  linkedinIos
//
//  Created by kishan rana ghosh on 19/11/25.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        VStack(spacing: 20){
            ProfilePostView()
            PostView()
        }
    }
}

#Preview {
    HomeScreen()
}
