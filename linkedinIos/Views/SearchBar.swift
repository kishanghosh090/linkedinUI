//
//  SearchBar.swift
//  linkedinIos
//
//  Created by kishan rana ghosh on 19/11/25.
//

import SwiftUI

struct SearchBar: View {
    var body: some View {
        HStack(alignment: .center){
            Image("demo")
                .resizable()
                .ignoresSafeArea(.all)
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame(width: 60, height: 60)
            
            // search bar
            RoundedRectangle(cornerRadius: 8)
                .foregroundStyle(.blue.opacity(0.1))
                .frame(width: 270, height: 30)
                .overlay{
                    HStack{
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            .foregroundStyle(.gray)
                        Spacer()
                    }.padding()
                }
            
            // message box
            Image(systemName: "ellipses.bubble.fill")
                .resizable()
                .foregroundStyle(.gray)
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
        }.padding(.top)
    }
}

#Preview {
    SearchBar()
}
