//
//  Dictonary_V2App.swift
//  Dictonary_V2
//
//  Created by Eric Sousa on 3/6/23.
//

import SwiftUI

@main
struct Dictonary_V2App: App {
    @EnvironmentObject var vm: Books 
    var body: some Scene {
        WindowGroup {
           NavigationView{
             HomeView()
           }
            .environmentObject(Books())
            
        }
    }
}
