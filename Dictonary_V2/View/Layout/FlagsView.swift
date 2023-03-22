//
//  FlagsView.swift
//  Dictonary_V2
//
//  Created by Eric Sousa on 3/18/23.
//

import SwiftUI

struct FlagsView: View {
    @EnvironmentObject var model: Books
    @State var pickerIndex = "ASL"
    var body: some View {
        HStack(alignment: .center, spacing:20){
            VStack(spacing:5){
                Image("english")
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: 50,  maxHeight: 50)
                    .cornerRadius(25)
                    .shadow(radius: 5)
                Text("English")
            }
            .frame(width: 70.0, height: 80)
            
            Image(systemName: "arrow.right.circle")
                .resizable()
                .frame(maxWidth: 35, maxHeight: 35)
                .padding(.bottom)
            
            VStack(spacing:5){ Image(bandeira())
                .resizable()
                .scaledToFill()
                .frame(maxWidth: 50,  maxHeight: 50)
                .cornerRadius(25)
                .shadow(radius: 5)
            
            Picker("", selection: $pickerIndex)
            {  Text("ASL").tag("ASL")
                if  model.showSpa { Text("Spanish")
                .tag("ESP")}
                if  model.showFre { Text("French")
                .tag("FRE")}
                if  model.showGer { Text("German")
                    .tag("GER")}
                if  model.showPor { Text("Portuguese").tag("POR")}
                if  model.showIta {  Text("Italian").tag("ITA")}
                if  model.showHeb { Text("Hebrew").tag("HEB")}
                
            }
            .frame(width: 200.0, height: 20)
            .accentColor(.black)
        }.frame(width: 70.0, height: 80)   }.padding(.top)
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
        band =  "asl"
        }
        return band

    }
    func bandeira2( ) -> String {
        var band = pickerIndex
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
        print(band)
        return band

    }
    
}

struct FlagsView_Previews: PreviewProvider {
    static var previews: some View {
        FlagsView()
    }
}
