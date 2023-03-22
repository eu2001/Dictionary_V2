//
//  FlashCardView.swift
//  Dictonary_V2
//
//  Created by Eric Sousa on 3/6/23.
//

import SwiftUI
struct FlashCardView: View {

@EnvironmentObject var model: Books
@State var pickerIndex = "GER"
@State var cartao = false
@State private var fillColor: UIColor = UIColor.systemGray6
@State var texto = ""

    var body: some View {
        ZStack{
      fundo()
            VStack(alignment: .center, spacing: 20){
                Text("Practice")
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
                                        FlashCardCard()
                                    } label: {
                                        Text(word.nameEng)
                                    }
                                }
                            }.scrollContentBackground(.hidden)
                          
                            
                            Spacer()
                        }.padding().padding(.bottom,20)
                     }
      }
                }
        
        
    }
func bandeira( ) -> String {
    var band = pickerIndex
    switch band { case "ESP": band = "spanish"
    case "FRE": band = "french"
    case "GER": band = "german"
    case "POR": band = "portuguese"
    case "ITA": band = "italian"
    case "HEB": band = "hebrew"
    case "ASL": band = "asl"
     default:
    band =  "german"
    }
    return band

}

func mudacor(_  index: Book) -> Bool {
  if cartao == false
    {fillColor = UIColor.blue
      texto = index.nameEng
      cartao = true
  }
    else if cartao == true {fillColor = UIColor.red
    /*//colocar o name + lingua
        var band2 = pickerIndex
        switch band2 { case "ESP": band2 = "index.nameEsp"
        case "FRE": band2 = "index.nameFre"
        case "GER": band2 = "index.nameGer"
        case "POR": band2 = "index.namePort"
        case "ITA": band2 = "index.nameIta"
        case "HEB": band2 = "index.nameheb"
        case "ASL": band2 = "index.nameAsl"
         default:
        band2 =  "german"
        } */
        texto = index.nameGer
        cartao = false
    }
    return cartao
}

}

struct FlashCardView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{  FlashCardView()}.environmentObject(Books())
    }
}

