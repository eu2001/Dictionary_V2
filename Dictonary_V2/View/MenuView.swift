//
//  MenuView.swift
//  Dictonary_V2
//
//  Created by Eric Sousa on 3/6/23.
//

import SwiftUI

struct MenuView: View {
    @State var tabIndex = 0
    var body: some View {
        ZStack{
            Color(.white).ignoresSafeArea()
            
            TabView(selection: $tabIndex){
                SearchView().tabItem{
                    VStack{
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }}.tag(0)
                
                FavoriteView().tabItem{
                    VStack{
                        Image(systemName: "star")
                        Text("Favorites")
                    }}.tag(1)
                
                LanguageView().tabItem{
                    VStack{
                        Image(systemName: "character.book.closed.fill")
                        Text("Languages")
                    }}.tag(2)
                
                FlashCardView().tabItem{
                    VStack{
                        Image(systemName: "rectangle.fill.on.rectangle.fill")
                        Text("Practice")
                    }}.tag(3)
                
                HelpView().tabItem{
                    VStack{
                        Image(systemName: "info.circle")
                        Text("Help")
                    }}.tag(4)
            }
        }.navigationBarHidden(true)
    }
}
struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MenuView()}.environmentObject(Books())}
}
