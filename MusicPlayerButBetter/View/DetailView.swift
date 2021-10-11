//
//  SwiftUIView.swift
//  MusicPlayerButBetter
//
//  Created by Cesar Pacheco on 10/9/21.
//

import SwiftUI
import AVKit



struct DetailView: View {
    @State var audioPlayer: AVAudioPlayer!
    @ObservedObject var song: Song
    var body: some View {
        ZStack{
            Color("background").ignoresSafeArea()
        VStack {
            TitleAuthorStack(song: song, titleFont: .title,
                             authorFont:.title2)
            Image(song.image)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 400)
                .padding()
            HStack {
                Button(action: {
                    audioPlayer.play()
                }) {
                    Image("play")
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(Color("Bruh"))
            }
                Button(action: {
                    audioPlayer.pause()
                }) {
                    Image("pause")
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(Color("Bruh"))
            }
            }
        }
        .onAppear{
            let sound = Bundle.main.path(forResource: song.author + " - " + song.title, ofType: "mp3")
            audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        }
            
        }
            
        }
    }


struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(song: .init())
    }
}


