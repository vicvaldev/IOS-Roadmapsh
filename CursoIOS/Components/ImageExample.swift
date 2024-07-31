//
//  ImageExample.swift
//  CursoIOS
//
//  Created by Victor on 30-07-24.
//

import SwiftUI

struct ImageExample: View {
    var body: some View {
        Image("swift-icon").resizable().scaledToFit().frame(width: 50, height: 50)
        Image(systemName: "arcade.stick.console")
            .resizable()
            .scaledToFit()
            .frame(width: 90, height: 50)
    }
}

#Preview {
    ImageExample()
}
