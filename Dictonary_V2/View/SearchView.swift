//
//  SearchView.swift
//  Dictonary_V2
//
//  Created by Eric Sousa on 3/6/23.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        ZStack{
            fundo()
            VStack(alignment: .center, spacing: 20){
                Text("Search")
                    .font(.title)
                    .foregroundColor(.black)
                    .bold()
                    .padding()
                
                
                ZStack{
                    fundo2()
                    ScrollView {
                        VStack(spacing: 30)
                        {
                            Spacer()
                            botao1
                            botao2
                            botao3
                                .navigationTitle("Search")
                        }}}
                }
            }
        }}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView().environmentObject(Books())
    }
}
    extension SearchView {
        

        private var botao1: some View {
            NavigationLink(destination: SearchWord(),
                           label: {Text("Search by Word")
                    .foregroundColor(.white)
                    .font(.title2)
                    .bold()
                    .frame(height: 65)
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .cornerRadius(10)
                    .padding(.horizontal,40)
                    .shadow(color:.blue, radius: 6, x:5 , y:5)
                                })
        }
        
        private var botao2: some View {
            NavigationLink(destination: SearchPreAnnounc(),
                           label: {Text("Search by Announcement")
                    .foregroundColor(.white)
                    .font(.title2)
                    .bold()
                    .frame(height: 65)
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .cornerRadius(10)
                    .padding(.horizontal,40)
                    .shadow(color:.blue, radius: 6, x:5 , y:5)
                                })
        }
        private var botao3: some View {
            NavigationLink(destination: SearchPreDialogue(),
                           label: {Text("Search by Dialogue")
                    .foregroundColor(.white)
                    .font(.title2)
                    .bold()
                    .frame(height: 65)
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .cornerRadius(10)
                    .padding(.horizontal,40)
                    .shadow(color:.blue, radius: 6, x:5 , y:5)
                                })
        }
        
    }
