//
//  Playlist.swift
//  MusicPlayerButBetter
//
//  Created by Cesar Pacheco on 10/10/21.
//

import Foundation

class PlayList: ObservableObject {
    let id = UUID()
    let name: String
    let songList: Array <Song>

    init(name: String = "Name", songList: Array <Song> = []){
        self.name = name
        self.songList = songList
    }
}

struct PlaylistPlaylist {
    let playlists = [
        PlayList(name: "My Playlist", songList: [
            Song(title: "Glass Heart", author: "DDD", image: "DDD"),
            Song(title: "Translucence", author: "Neonix", image: "Neonix"),
            Song(title: "Hopele555", author: "Oolacile", image: "Oolacile")])]
}


extension PlayList: Hashable, Identifiable {
    func hash(into hasher: inout Hasher){
      hasher.combine(id)
    }
}

extension PlayList: Equatable {
    static func == (lhs: PlayList, rhs: PlayList) -> Bool {
        lhs === rhs
    }
}

 

