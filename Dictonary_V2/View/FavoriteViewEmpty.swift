//
//  FavoriteViewEmpty.swift
//  Dictonary_V2
//
//  Created by Eric Sousa on 3/16/23.
//

import SwiftUI

struct FavoriteViewEmpty: View {
    var body: some View {
//        ZStack{
//         fundo()
//            VStack(alignment: .center, spacing: 20){
//                Text("Favorites")
//                    .font(.title)
//                    .foregroundColor(.black)
//                    .bold()
//                    .padding()
//
//
//                ZStack{
//               fundo2()
                    
                    ScrollView {
                        VStack(alignment: .center, spacing: 30){
                        
                     
                            VStack(spacing:30){   Text("There are still no words added as favorites.    😔")
                                    .font(.headline)
                                    .foregroundColor(.black)
                                    .multilineTextAlignment(.center)
                                  
                                Text("Click on the button bellow to add new words").foregroundColor(.black)                      .multilineTextAlignment(.center)
                                
                            }
                          
                            NavigationLink(destination: SearchWord(),
                                    label: {Text("Add New Favorite Word")
                                    .foregroundColor(.white)
                                    .bold()
                                    .frame(width:300, height:65)
                                    .background(.blue)
                                    .cornerRadius(10)
                                    .shadow(radius: 10)})
                            
                        }.padding().padding(.horizontal)
                    }.padding(.vertical,40)
                }
                }
          
struct FavoriteViewEmpty_Previews: PreviewProvider {
    static var previews: some View {NavigationView{
        FavoriteViewEmpty()}
    }
}
