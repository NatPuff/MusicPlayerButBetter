//
//  SwiftUIView.swift
//  MusicPlayerButBetter
//
//  Created by Cesar Pacheco on 10/9/21.
//

import SwiftUI

struct TitleAuthorStack: View {
    let song: Song
    let titleFont: Font
    let authorFont: Font
    var body: some View {
        VStack(alignment: .leading){
            Text(song.title)
                .font(.system(size:50))
                .frame(width:400, height: 50, alignment: .bottomLeading)
                .foregroundColor(Color.white)
                .padding()
            Text(song.author)
                .font(authorFont)
                .foregroundColor(.white)
                .padding(.leading)
        }
    }
}

struct SongLayout_Previews: PreviewProvider {
    static var previews: some View {
        TitleAuthorStack(song: .init(), titleFont: .title, authorFont:.title2)
    }
}


