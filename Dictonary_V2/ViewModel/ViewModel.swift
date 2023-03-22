//
//  ViewModel.swift
//  Dictonary_V2
//
//  Created by Eric Sousa on 3/6/23.
//

import Foundation
import Combine

class Books: ObservableObject {
    var cancellables = Set<AnyCancellable>()
    let itemsKey:String = "items_list"
    @Published var showSpa = true
    @Published var showPor = true
    @Published var showIta = true
    @Published var showGer = true
    @Published var showHeb = true
 
    @Published var showFre = true
    @Published var searchText: String = ""
    
    @Published var books: [Book] = []
    @Published var wordsFav: [Book] = []
    private let dataService = WordsDataService()
    private let favoriteDataService = FavoriteDataService()
    private var cancellabeles = Set<AnyCancellable>()
    
    //    {
    //    didSet {
    //               saveItems()
    //           }
    //       }
    
    init() {
        getBooks()
        
    }
    
    func getBooks() {
        
        $searchText
            .combineLatest(dataService.$books)
            .debounce(for: .seconds(0.5), scheduler: DispatchQueue.main)
            .map{(text, startingWords) -> [Book] in
                guard !text.isEmpty else {
                    return startingWords.sorted(by: {$0.nameEng<$1.nameEng})
                }
                let lowercasedText = text.lowercased()
                return startingWords.filter { (word) -> Bool in
                    return word.nameEng.lowercased().contains(lowercasedText) ||
                    word.nameSpa.lowercased().contains(lowercasedText) ||
                    word.namePor.lowercased().contains(lowercasedText) ||
                    word.nameIta.lowercased().contains(lowercasedText) ||
                    word.nameGer.lowercased().contains(lowercasedText) ||
                    word.nameHeb.lowercased().contains(lowercasedText) ||
                    word.nameFre.lowercased().contains(lowercasedText)
                    
                }
            }.sink {[weak self] (returnedWords) in
                self?.books = returnedWords
            }.store(in: &cancellables)
    
        
        $books.combineLatest(favoriteDataService.$savedEntities)
            .map {(book, FavoritesEntity) -> [Book] in
                book.compactMap{(word)-> Book? in
                    guard let entity = FavoritesEntity.first (where: {$0.wordID == word.id})
                    else
                    { return nil }
                    return word.updateCompletion()
                }
            }.sink{[weak self] (returnedWords) in self?.wordsFav = returnedWords}.store(in: &cancellables)
        
    }


    func updateFavorites(word:Book) {
        favoriteDataService.updateFavorites(word: word)
    }

    func handleOutput(output: URLSession.DataTaskPublisher.Output) throws -> Data {
        guard
            let response = output.response as? HTTPURLResponse,
            response.statusCode >= 200 && response.statusCode < 300 else {
            throw URLError(.badServerResponse)
        }
        return output.data
    }
    
//    func updateItem(book: Book) {
//            if let index = books.firstIndex(where: { $0.id == book.id }) {
//                books[index] = book.updateCompletion()
//                wordsFav = books.filter({$0.isFavourite})
//
//            }
//        }
//
//    func saveItems() {
//            if let encodedData = try? JSONEncoder().encode(books) {
//                UserDefaults.standard.set(encodedData, forKey: itemsKey)
//            }
//        }


        
}
