//
//  Model.swift
//  Dictonary_V2
//
//  Created by Eric Sousa on 3/6/23.
//

import Foundation

struct Book : Codable , Identifiable {
    
    var id: String
    var chapter: Int
    var isFavourite: Bool
    var nameEng: String
    var audioEng: String
    var translitEng: String
    var namePor: String
    var translitPor: String
    var audioPor: String
    var nameSpa: String
    var translitSpa: String
    var audioSpa: String
    var nameIta: String
    var translitIta: String
    var audioIta: String
    var nameGer: String
    var translitGer: String
    var audioGer: String
    var nameFre: String
    var translitFre: String
    var audioFre: String
    var nameHeb: String
    var translitHeb: String
    var audioHeb: String
    var nameASL: String
    
    init(id: String,
         chapter: Int,
         isFavourite: Bool, nameEng:String, audioEng:String, translitEng:String, namePor:String, translitPor:String, audioPor:String, nameSpa:String, translitSpa:String, audioSpa:String, nameIta:String, translitIta: String, audioIta:String, nameGer:String, translitGer:String, audioGer:String, nameFre:String, translitFre:String, audioFre:String, nameHeb:String, translitHeb:String, audioHeb:String, nameASL:String) {
        self.id = id
        self.chapter = chapter
        self.isFavourite = isFavourite
        self.nameEng = nameEng
        self.translitEng = translitEng
        self.audioEng = audioEng
        self.namePor = namePor
        self.translitPor = translitPor
        self.audioPor = audioPor
        self.nameSpa = nameSpa
        self.translitSpa = translitSpa
        self.audioSpa =  audioSpa
        self.nameIta =  nameIta
        self.translitIta = nameIta
        self.audioIta =  audioIta
        self.nameGer = nameGer
        self.translitGer =  translitGer
        self.audioGer =  audioGer
        self.nameFre = nameFre
        self.translitFre =  translitFre
        self.audioFre =  audioFre
        self.nameHeb = nameHeb
        self.translitHeb =  translitHeb
        self.audioHeb = audioHeb
        self.nameASL = nameASL

       }
    
    func updateCompletion () ->  Book {
        print("chega aqui \(isFavourite) \(nameEng)")
        return Book(id: id, chapter: chapter, isFavourite: !isFavourite, nameEng: nameEng, audioEng: audioEng, translitEng: translitEng, namePor: namePor, translitPor: translitPor, audioPor: audioPor, nameSpa: nameSpa, translitSpa: translitSpa, audioSpa: audioSpa, nameIta: nameIta, translitIta: translitIta, audioIta: audioIta, nameGer: nameGer, translitGer: translitGer, audioGer: audioGer, nameFre: nameFre, translitFre: translitFre, audioFre: audioFre, nameHeb: nameHeb, translitHeb: translitHeb, audioHeb: audioHeb, nameASL: nameASL)
    }

}
