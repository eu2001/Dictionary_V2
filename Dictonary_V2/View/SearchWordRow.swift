//
//  SearchWordRow.swift
//  Dictonary_V2
//
//  Created by Eric Sousa on 3/9/23.
//

import SwiftUI

struct SearchWordRow: View {
 @EnvironmentObject var model: Books
    let word: Book
   @State var expansao:Bool = false

    var body: some View {
        VStack{ HStack{
            Text("🇺🇸")
            
            Text(word.nameEng )
                .font(.headline)
                .padding(5)
            Spacer()
            HStack (spacing: 15){

                Image(systemName: word.isFavourite ? "star.fill" : "star").foregroundColor(.yellow).onTapGesture {
                    model.updateFavorites(word: word)}
                
                Button { expandWords(book:word)
                }
            label: { Image(systemName: expansao ? "arrow.up": "arrow.down")
                    .foregroundColor(.black)
            }}
        }
        }
        if expansao {
            SearchWordRowExpand(word:word)
            
        }
    }
    func expandWords(book: Book){
        if expansao {
            expansao.toggle()
            return
        } else {
            expansao.toggle()
            
            return}
        
    }
}

struct SearchWordRow_Previews: PreviewProvider {
    static var previews: some View {
        SearchWordRow(word:dev.word)
    }
}
