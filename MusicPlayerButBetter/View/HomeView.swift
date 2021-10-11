//
//  ContentView.swift
//  MusicPlayerButBetter
//
//  Created by Cesar Pacheco on 10/8/21.
//

import SwiftUI

struct HomeView: View {
    let Playlist = SongPlaylist()
    var body: some View {
        
        List(Playlist.songs) { song in SongRow(song: song)
            
        }
        .navigationBarTitle("Song Library")
            
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let playlist = SongPlaylist()
        
        NavigationView{
        HomeView()
            SongRow(song: playlist.songs.first!)
        }
    }
}

struct SongRow: View {
    let song: Song
    var body: some View{
        NavigationLink(destination: DetailView(song: song)
        ){
            
            
        HStack{
            Image(song.image)
                .resizable()
                .scaledToFit()
                .frame(width:100, height: 100)
            Text(song.title + " -")
            Text(song.author)
        }
    }
}
}


