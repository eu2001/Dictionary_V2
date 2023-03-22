//
//  SearchWord.swift
//  Dictonary_V2
//
//  Created by Eric Sousa on 3/6/23.
//

import SwiftUI

struct SearchWord: View {

  
    @State private var searching = false

    @EnvironmentObject var model: Books

    var body: some View {
       
        ZStack{
            fundo()
            VStack(alignment: .center){
                Text("Search by Word")
                    .font(.title)
                    .foregroundColor(.black)
                    .bold()
                    .padding()
                
                
                ZStack{
                    fundo2()
                    VStack (spacing:0){
                        
                        SearchBar(searchText: $model.searchText).cornerRadius(15).padding(.horizontal,13)
                        
            
                        List {
                            ForEach(model.books) {word in
                                SearchWordRow(word: word)
                            }
                        }.listStyle(.plain).padding(.horizontal,30)
                   
                    }.padding(.bottom,20)
                    
                }}}
        
    }

   
}
                     
  

struct SearchWord_Previews: PreviewProvider {
    static var previews: some View { NavigationView {
        SearchWord()}.environmentObject(Books())
    }
}

