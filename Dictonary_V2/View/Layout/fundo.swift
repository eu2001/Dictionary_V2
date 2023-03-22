//
//  fundo.swift
//  Dictonary_V2
//
//  Created by Eric Sousa on 3/9/23.
//

import SwiftUI

struct fundo: View {
    var body: some View {
        Rectangle()
            .fill(LinearGradient (gradient: Gradient(colors: [Color(#colorLiteral(red: 0.610079325, green: 0.9385074156, blue: 1, alpha: 1)), Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))]), startPoint: .topLeading, endPoint: .bottom))
            .opacity(0.8)
            .ignoresSafeArea()
    }
}

struct fundo_Previews: PreviewProvider {
    static var previews: some View {
        fundo()
    }
}
