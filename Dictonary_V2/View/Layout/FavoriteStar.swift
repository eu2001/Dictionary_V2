//
//  FavoriteStar.swift
//  Dictonary_V2
//
//  Created by Eric Sousa on 3/21/23.
//

import SwiftUI

struct FavoriteStar: View {
    @EnvironmentObject var model: Books
    let word:Book
    var body: some View {
        Button {
            model.updateFavorites(word: word)}
    label: { Image(systemName: word.isFavourite ? "star" : "star.fill")
            .resizable()
            .frame(width: 15, height: 15)
        .foregroundColor(.yellow)}
    }
}

struct FavoriteStar_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteStar(word:dev.word)
    }
}
