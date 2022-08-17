//
//  ListView.swift
//  Playlist
//
//  Created by Andrew Almasi on 7/13/22.
//

import SwiftUI

struct ListView: View {
    
    var body: some View {
        List{
            ForEach(songs, id: \.self) { song in
                        NavigationLink{
                            DetailView(song: song)
                        } label: {
                        HStack{
                            Text(song.name)
                                .frame(width: 260, height: 60)
                                .font(.headline.bold())
                                .overlay(.secondary)
                                .foregroundColor(.primary)
                                .cornerRadius(10)
                        }
                        .padding(3)
                        .cornerRadius(10)
                    }
            }.listRowBackground(Color.rectColor)
                .listRowSeparator(.hidden)
            .padding()
        }

            .navigationTitle("Playlist App")
        }    }


struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

