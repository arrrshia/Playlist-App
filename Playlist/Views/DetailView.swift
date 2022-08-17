//
//  DetailView.swift
//  Playlist
//
//  Created by Andrew Almasi on 7/11/22.
//

import SwiftUI

struct DetailView: View {
    let song: Song
    
    var body: some View {
        NavigationView{
            ZStack {
                Color.backgroundColor.ignoresSafeArea()
                VStack(spacing: 40) {
                    Spacer()
                    Text(song.name)
                        .foregroundColor(Color(red: 0.16, green: 0.21, blue: 0.09))
                        .italic()
                        .font(.headline.bold())
                    Section{
                        Text(song.desc)
                            .frame(width: 300, height: 300)
                            .foregroundColor(.white)
                            .padding()
                            .font(.callout)
                            .opacity(0.9)
                            .multilineTextAlignment(.center)
                        
                    }
                .background(.rectColor)
                .cornerRadius(20)
                    Spacer()
                    Spacer()
                    Spacer()

                }
            }

        }
    }
}
