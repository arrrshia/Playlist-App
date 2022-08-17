//
//  Song.swift
//  Playlist
//
//  Created by Andrew Almasi on 7/11/22.
//

import Foundation

struct Song: Hashable, Identifiable {
    let name: String
    var desc: String
    let id = UUID()
    

}
