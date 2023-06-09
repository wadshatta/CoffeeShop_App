//
//  RemoteImage.swift
//  coffee
//
//  Created by MacBook Pro on 08/06/2023.
//

import SwiftUI
import CachedAsyncImage
struct RemoteImage: View {
    let url: URL?
    
    init(url: URL?) {
        self.url = url
    }
    var body: some View {
        ZStack{
            CachedAsyncImage(url: url) { image in
                image.resizable()
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .frame(maxWidth: 60,maxHeight: 60)
                    .foregroundColor(.gray)
            }


        }
    }
}

struct RemoteImage_Previews: PreviewProvider {
    static var previews: some View {
        RemoteImage(url: DummyData.drinks[0].imageUrl)
    }
}
