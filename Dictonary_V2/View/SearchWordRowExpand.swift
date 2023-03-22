//
//  SearchWordRowExpand.swift
//  Dictonary_V2
//
//  Created by Eric Sousa on 3/17/23.
//

import SwiftUI

struct SearchWordRowExpand: View { @EnvironmentObject var model: Books
    let word: Book
    @State var showASLScreen: Bool = false
    
    var body: some View {
      //  let word = model.books[index]
        
        VStack{  if  model.showSpa {
            HStack{Text("🇪🇸")
                Text(word.nameSpa)
                Image(systemName: "speaker.fill").foregroundColor(.blue).onTapGesture {
                    SoundManager.instance.playSound(sound: .GoodmorningSPA)
                }

                Spacer()
            }
        }
        
        if model.showFre  {
        HStack{Text("🇫🇷")
            Text(word.nameFre)
            Image(systemName: "speaker.fill").foregroundColor(.blue).onTapGesture {
                SoundManager.instance.playSound(sound: .GoodmorningFRE)
            }

            Spacer()
        }
     }
        if  model.showGer {
        HStack{Text("🇩🇪")
            Text(word.nameGer)
            Image(systemName: "speaker.fill").foregroundColor(.blue).onTapGesture {
                SoundManager.instance.playSound(sound: .GoodmorningGER)
            }

            Spacer()
        }
               }
         if  model.showPor {
        HStack{Text("🇧🇷")
            Text(word.namePor)
            Image(systemName: "speaker.fill").foregroundColor(.blue).onTapGesture {
                SoundManager.instance.playSound(sound: .GoodmorningPOR)
            }

            Spacer()
        }
        
          }
         if  model.showIta {
        HStack{Text("🇮🇹")
            Text(word.nameIta)
            Image(systemName: "speaker.fill").foregroundColor(.blue).onTapGesture {
                SoundManager.instance.playSound(sound: .GoodmorningITA)
            }

            Spacer()
        }
        
        }
        if  model.showHeb  {
        HStack{Text("🇮🇱")
                Text(word.nameHeb)
            Image(systemName: "speaker.fill").foregroundColor(.blue).onTapGesture {
                SoundManager.instance.playSound(sound: .GoodmorningHEB)
            }

            Spacer()
        }
        
        }
    //    if  model.showASL  {
            HStack{
                Text("🧏‍♂️")
                Text(word.nameEng)
                VStack {
                    Text("ASL").foregroundColor(.blue).onTapGesture {
                        showASLScreen.toggle()}.sheet(isPresented: $showASLScreen, content: {GifAslView(word:word)})
                    }

                Spacer()
            }
      Spacer()
    }.padding(.horizontal,20)
    .padding(.vertical,10)
    }
}

struct SearchWordRowExpand_Previews: PreviewProvider {
    static var previews: some View {
        SearchWordRowExpand(word:dev.word)
    }
}
