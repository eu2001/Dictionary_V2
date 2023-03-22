//
//  FavoriteDataService.swift
//  Dictonary_V2
//
//  Created by Eric Sousa on 3/20/23.
//

import Foundation
import CoreData

class FavoriteDataService {
    
    private let container: NSPersistentContainer
    private let containerName: String = "FavoritesModel"
    private let entintyName: String = "FavoritesEntity"
    @Published var savedEntities: [FavoritesEntity] = []
    
    init() {
        container = NSPersistentContainer(name: containerName)
        container.loadPersistentStores{ (_, error) in
            if let error = error {
                print("Error: \(error)")
            }
            self.getFavorite()
        }
    }
    func updateFavorites(word:Book) {
        if let entity = savedEntities.first(where: {$0.wordID == word.id}) {
          if word.isFavourite {
            update(entity: entity)
            }
      else {delete(entity: entity)}
        } else {add(word: word)}
    }
    
    private func getFavorite() {
        let request = NSFetchRequest<FavoritesEntity>(entityName: entintyName)
        do {savedEntities = try container.viewContext.fetch(request)}
        catch let error { print ("Error fetching favorites \(error)")}
    }
    private func add(word: Book)
    {
        let entity = FavoritesEntity(context: container.viewContext)
        entity.wordID = word.id
        applyChanges()
    }
    private func update(entity: FavoritesEntity) {
    applyChanges()
    }
    
    private func delete(entity: FavoritesEntity) {
        container.viewContext.delete(entity)
        applyChanges()
    }
    
    
    private func save() {
        do {try container.viewContext.save()}
        catch let error {
            print("Error savir to Core Data. \(error)")
        }
    }
    private func applyChanges() {
        save()
       getFavorite()
    }
}
