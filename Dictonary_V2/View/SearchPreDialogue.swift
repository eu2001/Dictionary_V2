//
//  SearchPreDialogue.swift
//  Dictonary_V2
//
//  Created by Eric Sousa on 3/13/23.
//

import SwiftUI

import SwiftUI

struct SearchPreDialogue: View {
    @EnvironmentObject var model: Books
    @State var littleFlag = FlagsView().bandeira2()
       var body: some View {
        ZStack{
        fundo()
            VStack(alignment: .center, spacing: 20){
                Text("Dialogues")
                    .font(.title)
                    .foregroundColor(.black)
                    .bold()
                    .padding()
                
                
                ZStack{
                   fundo2()
                    
                    VStack{
                
                          FlagsView()
                        List{
                            ForEach(model.books) {word in
                                NavigationLink {
                                    SearchDialoge(littleFlag:littleFlag)
                                } label: {
                                    Text(word.nameEng)
                                }
   }
                        }.scrollContentBackground(.hidden)
                            .padding(.horizontal, 15)

                    }}}
        }
    }
   
}

struct SearchPreDialogue_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {  SearchPreDialogue()}.environmentObject(Books())
    }
}
