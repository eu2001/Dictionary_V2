//
//  fundo2.swift
//  Dictonary_V2
//
//  Created by Eric Sousa on 3/9/23.
//

import SwiftUI

struct fundo2: View {
    var body: some View {
        Rectangle()
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .frame(maxHeight: .infinity)
            .cornerRadius(25)
            .padding(.horizontal, 15.0)
            .padding(.bottom,20)
            .shadow(color: .gray, radius: 4, x: 7, y: 7)
            .opacity(0.5)
           
    }
}

struct fundo2_Previews: PreviewProvider {
    static var previews: some View {
        fundo2()
    }
}
