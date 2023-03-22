//
//  WordsDataService.swift
//  Dictonary_V2
//
//  Created by Eric Sousa on 3/18/23.
//
import Foundation
import Combine

class WordsDataService {
    
    @Published var books: [Book] = []
    
    var wordSubscription: AnyCancellable?
    
    init() {
        getWords()
    }
    
    func getWords() {
        guard let url = URL(string: "https://eu2001.github.io/audiosDictionary/data1.json") else { return }
        
        wordSubscription = NetworkingManager.download(url: url)
           .decode(type: [Book].self, decoder: JSONDecoder())
           .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] (returnedWords) in

               self?.books = returnedWords
               self?.wordSubscription?.cancel()
           })
    }
}
        
        
      
