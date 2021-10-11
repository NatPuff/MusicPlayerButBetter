//
//  Song.swift
//  MusicPlayerButBetter
//
//  Created by Cesar Pacheco on 10/8/21.
//

import Foundation
import class UIKit.UIImage

class Song: ObservableObject {
    
    let id = UUID()
    let title: String
    let author: String
    let image: String
    init(title: String = "Title",
         author: String = "Author",
         image: String = "DDD"
    ){
        self.title = title
        self.author = author
        self.image = image
    }
}

struct SongPlaylist {
    let songs = [
        Song(title: "Glass Heart", author: "DDD", image: "DDD"),
        Song(title: "Translucence", author: "Neonix", image: "Neonix"),
        Song(title: "Hopele555", author: "Oolacile", image: "Oolacile")]
}

extension Song: Hashable, Identifiable {
    func hash(into hasher: inout Hasher){
      hasher.combine(id)
    }
}

extension Song: Equatable {
    static func == (lhs: Song, rhs: Song) -> Bool {
        lhs === rhs
    }
}
