//
//  InformationContainerView.swift
//  Playlist
//
//  Created by Andrew Almasi on 7/13/22.
//

import SwiftUI

struct InformationContainerView: View {
    var body: some View {
        VStack(alignment: .leading) {
            InformationDetailView(title: "Deluxe", subTitle: "Welcome to the playlist app. Import your JSON form your spotify playlist and edit the Song array!", imageName: "music.note.list")

            InformationDetailView(title: "Experience", subTitle: "You can either experience the list view of the app, or the grid view.\nOn the top left you can alternate, and on the top right there will be a button that brings you to the playlist.", imageName: "headphones")

            InformationDetailView(title: "Actual Info", subTitle: "As you go through the playlist, open each song. In each song you can add your own description.", imageName: "checkmark.square")
        }
        .padding(.horizontal)
    }
}

struct InformationContainerView_Previews: PreviewProvider {
    static var previews: some View {
        InformationContainerView()
            .preferredColorScheme(.dark)
    }
}
