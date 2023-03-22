//
//  ListCell.swift
//  Dictonary_V2
//
//  Created by Eric Sousa on 3/14/23.
//

import SwiftUI
struct ListCell: View {
    var text: String
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            ZStack {
                HStack {
                    Text(text)
                        .padding(.leading, 15)
                        .foregroundColor(.black)
                    Spacer()
                }
            }
            Spacer()
        }.background(Color(.white)).ignoresSafeArea()
    }
}

struct ListCell_Previews: PreviewProvider {
    static var previews: some View {
        ListCell(text: "Boarding")
    }
}
