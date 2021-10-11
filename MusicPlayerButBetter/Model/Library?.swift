//
//  Library?.swift
//  MusicPlayerButBetter
//
//  Created by Cesar Pacheco on 10/8/21.
//

import class UIKit.UIImage

struct Library {
    var sortedSongs: [Song] {songsCache}
    
    private var songsCache: [Song] = [
        .init(title: "Translucence", author: "Neonix")
        .init(title: "Hoples555", author: "Oolacile")
        .init(title: "Glass Heart", author: "DDD")
    ]
    var uiImages:[Song: UIImage] = [:]
}

