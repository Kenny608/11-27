//
//  VideoApp.swift
//  11-27-move
//
//  Created by Kenny Luchau on 11/28/23.
//

import SwiftUI
import AVKit
struct VideoApp: View {
    @State var player: AVPlayer?
    var body: some View {
        VideoPlayer(player: player, videoOverlay: {
            VStack {
                Spacer()
                Text("Caution is a bit loud!")
                    .foregroundColor(.white)
            }.padding()
        }).frame(height: 320)
            .onAppear {
                guard let videoURL = Bundle.main.url(forResource: "funny", withExtension: "mp4") else {
                    print ("Video file not found")
                    return
                }
                player = AVPlayer(url: videoURL as URL)
            }
    }
}
