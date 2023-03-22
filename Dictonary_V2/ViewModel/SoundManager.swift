//
//  File.swift
//  Dictonary_V2
//
//  Created by Eric Sousa on 3/10/23.
//
import AVKit
import Foundation

class SoundManager {
    static let instance = SoundManager ()
    var player: AVAudioPlayer?
    enum SoundOption: String {
        case Airplane
        case AirplaneESP
        case AirplaneGER
        case AirplaneHEB
        case AiplanePOR
        case AirplaneITA
        case AirplaneFRE
        case Goodmorning
        case GoodmorningPOR
        case GoodmorningSPA
        case GoodmorningITA
        case GoodmorningFRE
        case GoodmorningGER
        case GoodmorningHEB
        case BoardingAnnounc
        case BoardingAnnouncPOR
        case OverheadBin
        case OverheadBinPOR
    }
    func playSound(sound: SoundOption) {
        if let player = player, player.isPlaying{ player.pause() } 
        else{
            guard let url = Bundle.main.url(forResource: sound.rawValue, withExtension: "m4a") else { return }
            do{ self.player = try AVAudioPlayer(contentsOf: url)
                player?.play()
            } catch { print ("Error playing")}}
    }
}
