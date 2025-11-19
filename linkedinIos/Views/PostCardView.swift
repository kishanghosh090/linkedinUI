//
//  PostCardView.swift
//  linkedinIos
//
//  Created by kishan rana ghosh on 19/11/25.
//

import SwiftUI

let samplePostData = PostData(id: 1, image: "02", title: "kishan", followers: 5, profileImage: "1")

struct SocialView {
    var id: Int
    var image: String
    var title: String
}

var socialViewArr: [SocialView] = [
    .init(id: 0, image: "hand.thumbsup", title: "Like"),
    .init(id: 1, image: "text.bubble", title: "comment"),
    .init(id: 2, image: "arrow.turn.up.right", title: "shere"),
    .init(id: 3, image: "paperplane.fill", title: "Send")
]

struct PostCardView: View {
    let data: PostData
    var body: some View {
        VStack(alignment: .leading){
            Rectangle()
                .fill(.gray.opacity(0.4))
                .frame(width: .infinity, height: 10)
                .ignoresSafeArea()
            HStack(alignment: .center){
                Image(data.profileImage)
                    .resizable()
                    .clipShape(Circle())
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 70, height: 70, alignment: .leading)
                VStack(alignment: .leading){
                    Text(data.title)
                        .font(.body)
                    Text("\(data.followers) followers")
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                    Text("8m")
                        .font(.caption)
                        .foregroundStyle(.gray)
                }
                Spacer()
                Image(systemName: "ellipsis")
            }.padding(.horizontal)
        }
        Text("Looking for a new course on iOS with swift UI, you are already at great place")
        Image(data.image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: .infinity, height: .infinity, alignment: .center)
        Divider()
        HStack(alignment: .firstTextBaseline, spacing: 30){
            ForEach(socialViewArr, id: \.id){ sData in
                VStack{
                    Image(systemName: sData.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20, height: 25, alignment: .leading)
                        
                    Text(sData.title)
                        .font(.caption)
                }.padding()
            }
        }.padding(.horizontal)
    }
}

#Preview {
    PostCardView(data: samplePostData)
}
