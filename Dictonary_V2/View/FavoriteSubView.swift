//
//  FavoriteSubView.swift
//  Dictonary_V2
//
//  Created by Eric Sousa on 3/10/23.
//
import AVKit
import SwiftUI

struct FavoriteSubView: View {
    @EnvironmentObject var model: Books
    let word:Book
    @State var showASLScreen: Bool = false
    
    var body: some View {
     

            VStack(alignment: .leading){
                HStack {
                    FavoriteStar( word: word)
                    
                    Button{SoundManager.instance.playSound(sound: .Goodmorning)
                        }
                    label :{ Text(word.nameEng).fontWeight(.bold).foregroundColor(Color.blue)}}
                
                
                if  model.showSpa {
                    HStack{Text("🇪🇸")
                        Text(word.nameSpa)
                        Button { SoundManager.instance.playSound(sound: .GoodmorningSPA)
                            
                        } label: {
                            Image(systemName: "speaker.fill")
                        
                            
                        }
                        Spacer()
                    }
                }
                
                if model.showFre  {
                HStack{Text("🇫🇷")
                    Text(word.nameFre)
                    Button { SoundManager.instance.playSound(sound: .GoodmorningFRE)
                        
                    } label: {
                        Image(systemName: "speaker.fill")
                    }
                    Spacer()
                }
             }
                if  model.showGer {
                HStack{Text("🇩🇪")
                    Text(word.nameGer)
                    Button { SoundManager.instance.playSound(sound: .GoodmorningGER)
                        
                    } label: {
                        Image(systemName: "speaker.fill")
                    }
                    Spacer()
                }
                       }
                 if  model.showPor {
                HStack{Text("🇧🇷")
                    Text(word.namePor)
                    Button { SoundManager.instance.playSound(sound: .GoodmorningPOR)
                        
                    } label: {
                        Image(systemName: "speaker.fill")
                    }
                    Spacer()
                }
                
                  }
                 if  model.showIta {
                HStack{Text("🇮🇹")
                    Text(word.nameIta)
                    Button { SoundManager.instance.playSound(sound: .GoodmorningITA)
                        
                    } label: {
                        Image(systemName: "speaker.fill")
                    }
                    Spacer()
                }
                
                }
                if  model.showHeb  {
                HStack{Text("🇮🇱")
                        Text(word.nameHeb)
                    Button { SoundManager.instance.playSound(sound: .GoodmorningHEB)
                        
                    } label: {
                        Image(systemName: "speaker.fill")
                    }
                    Spacer()
                }
                
                }
            //    if  model.showASL  {
                    HStack{
                        Text("🧏‍♂️")
                        Text(word.nameEng)
                        VStack {
                            Button("ASL"){showASLScreen.toggle()}}.sheet(isPresented: $showASLScreen, content: {GifAslView(word:word)})
                
                        Spacer()
                    }
              Spacer()
            }.padding(.horizontal,40)
            .padding(.bottom,35)
            .padding(.top,20)
            .background(fundo2())
          .padding(.horizontal,15)
     
    
            
       
    }
}


struct FavoriteSubView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteSubView(word:dev.word).environmentObject(Books())
    }
}
