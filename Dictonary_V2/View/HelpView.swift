//
//  HelpView.swift
//  Dictonary_V2
//
//  Created by Eric Sousa on 3/6/23.
//

import SwiftUI

struct HelpView: View {
    var body: some View {
        ZStack{
         fundo()
            VStack(alignment: .center, spacing: 20){
                Text("Help")
                    .font(.title)
                    .foregroundColor(.black)
                    .bold()
                    .padding()
                
                
                ZStack{
               fundo2()
                    
                    ScrollView {
                        VStack(alignment: .center, spacing: 20){
                        
                     
                            Text("Here you can find information about the app and also examples of how to use it")
                                .font(.body)
                                .foregroundColor(.black)
                                .multilineTextAlignment(.leading)
                            
                            Image(systemName: "book").foregroundColor(.black)
                            
                            Text("About the book").foregroundColor(.black)
                            
                            Image(systemName: "person.fill.questionmark").foregroundColor(.black)
                            
                            Text("how to use it ").foregroundColor(.black)
                            
                        }.padding().padding(.horizontal)
                    }.padding(.vertical,40)
                }
                }
            }
        }
    
}

struct HelpView_Previews: PreviewProvider {
    static var previews: some View {
        HelpView()
    }
}

   
