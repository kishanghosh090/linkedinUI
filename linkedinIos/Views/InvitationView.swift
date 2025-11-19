//
//  InvitationView.swift
//  linkedinIos
//
//  Created by kishan rana ghosh on 19/11/25.
//

import SwiftUI

let sampleData = NetworkModel(id: 1, name: "kishan", position: "full stack dev", mutual: 12, image: "01")

struct InvitationView: View {
    let Data : NetworkModel
    var body: some View {
        HStack(alignment: .center, spacing: 10){
            Image(Data.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame(width: 70, height: 70, alignment: .leading)
            VStack(alignment: .leading) {
                Text(Data.name)
                    .font(.body)
                Text(Data.position)
                    .font(.subheadline)
                    .foregroundStyle(.gray)
                Text("\(Data.mutual) mutual connections")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }.frame(width: 150, height: 20, alignment: .leading)
            
            HStack{
                Image(systemName: "multiply.circle")
                    .font(.system(size: 30))
                    .foregroundStyle(Color.gray)
                Image(systemName: "checkmark.circle")
                    .font(.system(size: 30))
                    .foregroundStyle(Color.blue)
            }.padding(.horizontal)
        }.frame(width: .infinity, height: .infinity)
            .padding(.horizontal)
    }
}

#Preview {
    InvitationView(Data: sampleData)
}
