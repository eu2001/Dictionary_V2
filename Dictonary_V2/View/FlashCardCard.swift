//
//  FlashCardCard.swift
//  Dictonary_V2
//
//  Created by Eric Sousa on 3/10/23.
//

import SwiftUI

struct FlashCardCard: View {
    @EnvironmentObject var model: Books
    @State var cartao: Bool = true
   // @State var textocon = false
    var body: some View {
        ZStack{
          fundo()
            VStack(alignment: .center, spacing: 15){
                Text("Flash Cards")
                    .font(.title)
                    .foregroundColor(.black)
                    .bold()
                    .padding()
                ZStack{
                    fundo2().frame(height: 100)
                    VStack(spacing:10){
                     
                      HStack {Text("Category :" )
                            Text ("Airplane Vocabulary")}
                        HStack {Text ("Language:")
                            Text ("German")}
                     
                    }.padding(.bottom,20).frame( height:70)
                }
                TabView {
                    ForEach (0..<model.books.count){
                        index in

                        ZStack{ fundo2()                    .frame(height:400)
                                .onTapGesture {
                            cartao.toggle()
                        }.onAppear{(cartao = true)}

                            CardText(cartao:cartao, index:index)

                        }.padding(.bottom, 25)
                    }
                }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                    .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                    .padding(.bottom, 20)
                    
                }}
        }
   
}

struct CardText: View {
    @EnvironmentObject var model: Books
    var cartao: Bool
    //@State var texto:String
    var index: Int
 var body: some View {
     let word = model.books[index]
     VStack(alignment: .center){
         HStack{  Spacer()
             Text(cartao ? "🇺🇸":"🇩🇪").font(.largeTitle)}.padding(.horizontal,50)
         Text(cartao ? word.nameEng: word.nameGer)  .font(.title)
             .fontWeight(.bold)
             .foregroundColor(.black)
         .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
         Spacer()
         HStack(spacing:30){
             Spacer()
        Button{}
//             {model.updateItem(book: word)}
         label: {
                 ZStack{
                     Circle().frame(maxWidth: 50,  maxHeight: 50).foregroundColor(.white)
                     Circle().stroke().frame(maxWidth: 50, maxHeight: 50).foregroundColor(.yellow).shadow(color: .yellow, radius: 3).opacity(0.8)
                     Image(systemName: word.isFavourite ?  "star.fill" : "star").foregroundColor( .yellow).opacity(0.7).padding(.all).onTapGesture {
                         model.updateFavorites(word: word)}
                 }
                 
             }
             
             
             
             Button {SoundManager.instance.playSound(sound: .GoodmorningGER)} label: {
                 Image(systemName: "speaker.fill").padding(20).foregroundColor(.white).background( Circle().shadow(color: .blue, radius: 3).frame( maxWidth: 70, maxHeight: 70))}
             
             
             
             Button {} label: {
                 Image(systemName: "tortoise.fill").padding(20).foregroundColor(.white).background( Circle().frame( maxWidth: 50, maxHeight: 50).shadow(color: .blue, radius: 3))}
             
             
             Spacer()
             
         }
     }.padding(.vertical, 100)
   }

}
    
struct FlashCardCard_Previews: PreviewProvider {
    static var previews: some View {
        FlashCardCard().environmentObject(Books())
    }
}

