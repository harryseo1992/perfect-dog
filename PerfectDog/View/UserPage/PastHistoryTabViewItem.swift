//
//  PastHistoryTabViewItem.swift
//  PerfectDog
//
//  Created by Jong Hwan Seo on 2022-10-10.
//

import SwiftUI

struct PastHistoryTabViewItem: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Golden Retriever")
                .font(.title)
                .foregroundColor(.red)
            .padding(.bottom)

            Text("sweet potatoes")
                .font(.body)
                .fontWeight(.semibold)

            AsyncImage(url: URL(string: "https://images.dog.ceo/breeds/retriever-golden/n02099601_8429.jpg")) {
                image in image.resizable().aspectRatio(contentMode: .fill)
            } placeholder: {
                ProgressView()
            }.frame(width: 100, height:100)
            Spacer()
        }
            .tabItem{
                Image(systemName: "person.fill")
                Text("Past History")
            }.tag(2)
    }
}

struct PastHistoryTabViewItem_Previews: PreviewProvider {
    static var previews: some View {
        PastHistoryTabViewItem()
    }
}
