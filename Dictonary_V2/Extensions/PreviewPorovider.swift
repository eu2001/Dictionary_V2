//
//  PreviewPorovider.swift
//  Dictonary_V2
//
//  Created by Eric Sousa on 3/18/23.
//
import Foundation
import SwiftUI

extension PreviewProvider {
    
    static var dev: DeveloperPreview {
        return DeveloperPreview.instance
    }
    
}

class DeveloperPreview {
    
    static let instance = DeveloperPreview()
    private init() { }

  let word = Book(id: "1", chapter: 1, isFavourite: true, nameEng: "Good Morning", audioEng: "https://github.com/eu2001/audiosDictionary.git/Goodmorning.m4a", translitEng: "Good Morning", namePor: "Bom dia", translitPor: "bong jee-uh", audioPor: " https://github.com/eu2001/audiosDictionary.git/GoodmorningPOR.m4a", nameSpa: "Buenos dias", translitSpa: "boo-e-nos dee-ahs", audioSpa: "GoodmorningSPA.m4a", nameIta: "Buongiorno", translitIta: "boo-ong-jee-ohr-noh", audioIta: "https://github.com/eu2001/audiosDictionary.git/GoodmorningITA.m4a", nameGer: "Guten Morgen", translitGer: "goo-t'en mohr-g'en", audioGer: "https://github.com/eu2001/audiosDictionary.git/GoodmorningGER.m4a", nameFre: "Bonjour", translitFre: "bong-joor", audioFre: "https://github.com/eu2001/audiosDictionary.git/GoodmorningFRE.m4a", nameHeb: "בוקר טוב", translitHeb: "bo-kar tov", audioHeb: "https://github.com/eu2001/audiosDictionary.git/GoodmorningHEB.m4a", nameASL: "watch?v=OrbZBOFOa7Q")
    
}
