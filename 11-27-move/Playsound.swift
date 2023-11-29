//
//  Playsound.swift
//  11-27-move
//
//  Created by Kenny Luchau on 11/28/23.
//

import SwiftUI
import Foundation
import AVFoundation
struct Playsound: View {
    @State var playAudio = true
    var body: some View {
        Text("German lady trying to wake you up")
        Button(action: {
            if playAudio {
                playSound(sound: "EineLotta- German Girl Alarm Clock", type: "mp3")
            } else {
                stopSound()
            }
            playAudio.toggle()
        }, label: {
            Text(playAudio ? "Play audio" : "Stop audio")
        })
    }
}
