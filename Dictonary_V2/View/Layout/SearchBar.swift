//
//  SearchBar.swift
//  Dictonary_V2
//
//  Created by Eric Sousa on 3/14/23.
//

import SwiftUI
struct SearchBar: View {
    @Binding  var searchText: String 
  //  @Binding var searching: Bool
    //@Binding var mainList: [String]
    //@Binding var searchedList: [String]
    var body: some View {
        ZStack {
            // Background Color
            Color(.systemBlue)
            // Custom Search Bar (Search Bar + 'Cancel' Button)
            HStack {
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(
                            searchText.isEmpty ?
                            Color.black : Color.gray
                        )
                    
                    TextField("Search by name or symbol...", text: $searchText)
                        .foregroundColor(Color.black)
                        .disableAutocorrection(true)
                        .overlay(
                            Image(systemName: "xmark.circle.fill")
                                .padding()
                                .offset(x: 10)
                                .foregroundColor(Color.gray)
                                .opacity(searchText.isEmpty ? 0.0 : 1.0)
                                .onTapGesture {
                                     UIApplication.shared.endEditing()
                                    searchText = ""
                                }
                            
                            ,alignment: .trailing
                        )
                }
                .font(.headline)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.white)
                        .shadow(
                            color: Color.white.opacity(0.15),
                            radius: 10, x: 0, y: 0)
                ).padding()
            }
        }.frame(height: 70)
        
        
        
    }
}
