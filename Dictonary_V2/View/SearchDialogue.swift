//
//  SearchDialogue.swift
//  Dictonary_V2
//
//  Created by Eric Sousa on 3/6/23.
//

import SwiftUI

struct SearchDialoge: View {
    @EnvironmentObject var model: Books
    @State var littleFlag = ""
    var body: some View {
        ZStack{
          fundo()
            VStack{
                Text("Dialogues")
                    .font(.title)
                    .foregroundColor(.black)
                    .bold()
                    .padding()
                 
                ScrollView {
                    VStack
                    {
                        VStack(alignment: .center, spacing: 20.0){
                            HStack{
                                buttonSpeaker
                                
                                Text(model.books[4].nameEng)
                                    .font(.title3)
                                Spacer()
                                Text("🇺🇸")
                                    }.padding(.horizontal)
                            
                            Text(model.books[4].translitEng)
                                .multilineTextAlignment(.leading)
                            
                            Spacer()
                            
                        }.padding(.horizontal,30)
                            .padding(.vertical,20)
                            .background(fundo2())
                        
                        Divider()
                        //   Spacer()
                        VStack(alignment: .center, spacing: 20.0){
                            HStack{
                                buttonSpeaker2
                                
                                Text(model.books[4].namePor)
                                    .font(.title3)
                                Spacer()
                               Text(littleFlag)
                                
                            }.padding(.horizontal)
                            
                            Text(model.books[4].translitPor)
                                .multilineTextAlignment(.leading)
                            
                            Spacer()
                        }.padding(.horizontal,30)
                            .padding(.vertical,20)
                            .background(fundo2())
                        
                    }
                }.padding(.bottom)
                
                
            }}}}


struct SearchDialogue_Previews: PreviewProvider {
    static var previews: some View {
        SearchDialoge().environmentObject(Books())
    }
}


extension SearchDialoge {
    private var buttonSpeaker: some View {
        Button {SoundManager.instance.playSound(sound: .OverheadBin)
        }
    label: {  Image(systemName: "speaker.fill")
            .padding()
            .frame( maxWidth: 35,  maxHeight: 35)
            .background(.blue)
            .foregroundColor(.white)
            .cornerRadius(45)
    }}
    private var buttonSpeaker2: some View {
        Button {SoundManager.instance.playSound(sound: .OverheadBinPOR)
        }
    label: {  Image(systemName: "speaker.fill")
            .padding()
            .frame( maxWidth: 35,  maxHeight: 35)
            .background(.blue)
            .foregroundColor(.white)
        .cornerRadius(45)}
    }
}


