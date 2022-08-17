//
//  Picture.swift
//  Playlist
//
//  Created by Andrew Almasi on 7/12/22.
//

import Foundation

struct songJSON: Identifiable, Decodable {
    var platform: String
    var type: String
    var id: String
    var title: String
    var artist: String
    var artistLink: String
    var album: String
    var albumLink: String
    var isrc: String
    var duration: String
    var trackLink: String
    var preview: String
    var picture: String
    var addedDate: Int
    var addedBy: String
    var position: String
    var shareUrls: [String]
}
