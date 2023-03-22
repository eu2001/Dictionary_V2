//
//  SearchPreAnnounc.swift
//  Dictonary_V2
//
//  Created by Eric Sousa on 3/13/23.
//

import SwiftUI

struct SearchPreAnnounc: View {
    @EnvironmentObject var model: Books
    @State var littleFlag = FlagsView().pickerIndex
   
    var body: some View {
        ZStack{
           fundo()
            VStack(alignment: .center, spacing: 20){
                Text("Announcements")
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
                                    SearchAnnounc( littleFlag: littleFlag)
                                } label: {
                                    Text(word.nameEng)
                                }
   }
                        }.scrollContentBackground(.hidden)
                            .padding(.horizontal, 15)

                    }}}
        }
    }
    func badeira2() -> String {
        var band = FlagsView().pickerIndex
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

struct SearchPreAnnounc_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {  SearchPreAnnounc()}.environmentObject(Books())
    }
}
