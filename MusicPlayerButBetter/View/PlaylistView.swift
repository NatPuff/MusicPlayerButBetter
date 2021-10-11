//
//  PlaylistView.swift
//  MusicPlayerButBetter
//
//  Created by Cesar Pacheco on 10/10/21.
//

import SwiftUI

struct PlaylistView: View {
    let playlist = PlaylistPlaylist()
    var body: some View {
        
        List(playlist.playlists) { playlist in PlaylistRow(playlist: playlist)
            
        }
        .navigationBarTitle("Library")
            
}
}
struct PlaylistRow: View {
    let playlist: PlayList
    var body: some View{
        NavigationLink(destination: SongView()
        ){
            
            
        HStack{
            Image("PUFF")
                .resizable()
                .scaledToFit()
            Text(playlist.name)
        }
    }
}
}


struct PlaylistView_Previews: PreviewProvider {
    static var previews: some View {
        let allPlayList = PlaylistPlaylist()
        NavigationView{
            PlaylistView()
            PlaylistRow(playlist: allPlayList.playlists.first!)
            
            
        }
       
    }
}
