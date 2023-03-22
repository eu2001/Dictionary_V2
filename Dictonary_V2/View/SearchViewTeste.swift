//
//  SearchViewTeste.swift
//  Dictonary_V2
//
//  Created by Eric Sousa on 3/14/23.
//

import SwiftUI
struct SearchViewTeste: View {
    init() {
//        // Navigation Bar Background Color
//        UINavigationBar.appearance().barTintColor = UIColor(#colorLiteral(red: 0.737254902, green: 0.1294117647, blue: 0.2941176471, alpha: 1))
        // Navigation Bar Text Color
//    UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.black]
//        // Navigation Bar Back Button Color
 //     UINavigationBar.appearance().tintColor = UIColor.white
//        UINavigationBar.appearance().isTranslucent = false
    }
    @State private var palavras = [String]()
    @State private var palavrasBusca = [String]()
    @State private var searching = false
    @EnvironmentObject var model: Books
    var body: some View {
      //  NavigationView {
            VStack(spacing: 0) {
                // SearchBar
                SearchBar(searching: $searching, mainList: $palavras, searchedList: $palavrasBusca)
                // List
                ScrollView {
                    VStack(spacing: 0) {
                        ForEach(0..<model.books.count){ index in
                            palavras.append(model.books[index].nameEng)}
                            
                        ForEach(searching ? (0..<palavrasBusca.count) : (0..<model.books.count)) { row in
                            NavigationLink(
                                destination:
//                                DetailsView(selectedCountry: searching ? searchedCountryList[row] : countryList[row])
                                HelpView(),
                                label: {
                                    SearchWordRow (text: searching ?  palavrasBusca[row] : palavras[row])
                                        .frame(height: 44)
                                })
                                .simultaneousGesture(TapGesture().onEnded {
                                    // Hide Keyboard after pressing a Cell
                                    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                                })
                                .buttonStyle(ListButtonStyle(highlightColor: Color(.black).opacity(0.7))) // Highlight Color
                               // .navigationTitle("Search by Word") // Title for the back button
                        }
                    }
                }
                .background(Color(.white).ignoresSafeArea())
            }
           // .navigationBarTitleDisplayMode(.inline)
           // .navigationTitle("SearchListSwiftUIExample") // Navigation Bar Title
       // }
//        .onAppear(perform: {
//            listOfWords()
//        })
    }
   // func listOfWords() {
//        for code in NSLocale.isoCountryCodes as [String] {
//            let id = NSLocale.localeIdentifier(fromComponents: [NSLocale.Key.countryCode.rawValue: code])
//            let name = NSLocale(localeIdentifier: "en").displayName(forKey: NSLocale.Key.identifier, value: id) ?? "Country not found for code: \(code)"
        
            //+ countryFlag(country: code))
        }
    //}
//    // Add Flag Emoji
//    func countryFlag(country: String) -> String {
//        let base: UInt32 = 127397
//        var s = ""
//        for v in country.unicodeScalars {
//            s.unicodeScalars.append(UnicodeScalar(base + v.value)!)
//        }
//        return String(s)
//    }
//}
struct SearchViewTeste_Previews: PreviewProvider {
    static var previews: some View {
        SearchViewTeste()
    }
}
// Highlight Color for Cell
struct ListButtonStyle: ButtonStyle {
    var highlightColor: Color
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label.overlay(configuration.isPressed ? highlightColor : Color.clear)
    }
}
