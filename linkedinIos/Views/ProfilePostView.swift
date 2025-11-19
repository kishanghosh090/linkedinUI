//
//  ProfilePostView.swift
//  linkedinIos
//
//  Created by kishan rana ghosh on 19/11/25.
//

import SwiftUI

struct ProfilePostView: View {
    var body: some View {
        VStack(alignment: .leading){
            SearchBar()
            Divider()
            HStack{
                Image(systemName: "square.and.pencil")
                Text("Share a post")
                    .font(.title3)
            }.padding(.horizontal)
            Divider()
            HStack{
                Image(systemName: "photo")
                    .foregroundStyle(.blue)
                Text("photo")
                Spacer()
                Image(systemName: "video.fill")
                    .foregroundStyle(.green)
                Text("Video")
                Spacer()
                Image(systemName: "calendar")
                    .foregroundStyle(.orange)
                Text("Event")
            }.padding(.horizontal)
        }
    }
}

#Preview {
    ProfilePostView()
}
