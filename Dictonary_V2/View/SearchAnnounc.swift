//
//  SearchAnnounc.swift
//  Dictonary_V2
//
//  Created by Eric Sousa on 3/6/23.
//

import SwiftUI

struct SearchAnnounc: View {
    @EnvironmentObject var model: Books
    @State var isRunning: Bool = false
    @State var littleFlag = ""
    var body: some View {
        ZStack{
            fundo()
            VStack{
                Text("Announcements")
                    .font(.title)
                    .foregroundColor(.black)
                    .bold()
                    .padding()
                
                
                
                ScrollView {
                    VStack
                    {
                        VStack(alignment: .center, spacing: 20.0){
                            HStack{
                                buttonSpeaker.onTapGesture {
                                    isRunning.toggle()
                                }
                                
                                Text(model.books[3].nameEng)
                                    .font(.title3)
                                
                               
                                Spacer()
                               Text("🇺🇸")
                            }.padding(.horizontal)
                            
                            Text(model.books[3].translitEng)
                                .multilineTextAlignment(.leading)
                            
                            Spacer()
                            
                        }.padding(.horizontal,30)
                            .padding(.vertical,20)
                            .background(fundo2())
                        
                        Divider()
                        
                        VStack(alignment: .center, spacing: 20.0){
                            HStack{
                                buttonSpeaker2.onTapGesture {
                                    isRunning.toggle()}
                                
                                Text(model.books[3].namePor)
                                    .font(.title3)
                                Spacer()
                                Text(bandeira())
                                
                            }.padding(.horizontal)
                            
                            Text(model.books[3].translitPor)
                                .multilineTextAlignment(.leading)
                            
                            Spacer()
                        }.padding(.horizontal,30)
                            .padding(.vertical,20)
                            .background(fundo2())
                        
                    }
                }.padding(.bottom)
                
                
            }}}
    func bandeira( ) -> String {
        var band = littleFlag
        switch band { case "ESP": band = "🇪🇸"
        case "FRE": band = "🇫🇷"
        case "GER": band = "🇩🇪"
        case "POR": band = "🇧🇷"
        case "ITA": band = "🇮🇹"
        case "HEB": band = "🇮🇱"
        case "ASL": band = "🧏‍♂️"
         default:
        band =  "🧏‍♂️"
        }
        return band

    }
}

struct SearchAnnounc_Previews: PreviewProvider {
    static var previews: some View {
        SearchAnnounc().environmentObject(Books())
    }
}



extension SearchAnnounc {
    private var buttonSpeaker: some View {
        Button {SoundManager.instance.playSound(sound: .BoardingAnnounc)
        }
    label: {  Image(systemName: isRunning ? "pause.fill" : "speaker.fill")
            .padding()
            .frame( maxWidth: 35,  maxHeight: 35)
            .background(.blue)
            .foregroundColor(.white)
        .cornerRadius(45)}
    }
    private var buttonSpeaker2: some View {
        Button {SoundManager.instance.playSound(sound: .BoardingAnnouncPOR)
        }
    label: {  Image(systemName: isRunning ? "pause.fill" : "speaker.fill")
            .padding()
            .frame( maxWidth: 35,  maxHeight: 35)
            .background(.blue)
            .foregroundColor(.white)
        .cornerRadius(45)}
    }
}
