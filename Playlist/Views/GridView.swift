//
//  GridView.swift
//  Playlist
//
//  Created by Andrew Almasi on 7/12/22.
//

import SwiftUI
import SDWebImageSwiftUI

struct GridView: View {
    func checkSong(jsonTitle: songJSON, songs: [Song]) -> Song {
        var s = Song(name: "Error", desc: "Error")
        for song in songs {
            if jsonTitle.title.localizedCaseInsensitiveContains(song.name) {
                s = song
                break
            }
        }
        return s
    }
    
    var colums = [
            GridItem(spacing: 0),
            GridItem(spacing: 0)
        ]
    
    init() {
        UITableView.appearance().backgroundColor = UIColor(red: 1.00, green: 0.98, blue: 0.88, alpha: 1.00) // Uses UIColor
            let navBarAppearance = UINavigationBar.appearance()

        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor(Color.rectColor)]
    }
    
    var body: some View {
            ScrollView {
                  LazyVGrid(columns: colums, spacing: 10) {
                      ForEach(songsJSON) { song in
                          NavigationLink{
                              DetailView(song: checkSong(jsonTitle: song, songs: songs))
                          } label: {
                              VStack {
                                  WebImage(url: URL(string: song.picture))
                                  .resizable()
                                  .aspectRatio(contentMode: .fill)
                                  .frame(width: 150, height: 150)
                                  .cornerRadius(14)
                                  .clipped()
                                  Text(song.title)
                                      .foregroundColor(.rectColor)
                                      .font(.caption.italic())
                              }
                          }
                          .padding()
                  }.navigationTitle("Playlist App")
            }
            }.background(Color.backgroundColor)
        }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}

