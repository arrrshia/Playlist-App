//
//  TitleView.swift
//  Playlist
//
//  Created by Andrew Almasi on 7/13/22.
//

import SwiftUI

struct TitleView: View {
    var body: some View {
        VStack {
            Image(systemName: "heart.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 118, alignment: .center)
                .accessibility(hidden: true)
                .foregroundColor(.rectColor)

            Text("Welcome to")
                .customTitleText()
            
            Text("playlist app")
                .customTitleText()
                .foregroundColor(.rectColor)
        }
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView()
            .preferredColorScheme(.dark)
    }
}
