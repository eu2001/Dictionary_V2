//
//  FavoriteView.swift
//  Dictonary_V2
//
//  Created by Eric Sousa on 3/6/23.
//

import SwiftUI

struct FavoriteView: View {
    
    @EnvironmentObject var model: Books
    @State var counter = 0
  
    var body: some View {
        ZStack{
        fundo()
            VStack(alignment: .center, spacing: 20){
                Text("Favorites")
                    .font(.title)
                    .foregroundColor(.black)
                    .bold()
                    .padding()
                
                
                ZStack{
                 fundo2()
                    ScrollView{
                        if model.wordsFav.count == 0 {
                            FavoriteViewEmpty() }
                        else{
                            ForEach(model.wordsFav){ word in
                                if !word.isFavourite {
                                    FavoriteSubView(word: word)}
                                else {Text(word.nameEng)}
    

                         }
                        
                    }
                    }.padding(.bottom,30).padding(.top,20)
                    }
                }
            }
            
        }
    
    }


struct FavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteView().environmentObject(Books())
    }
}


