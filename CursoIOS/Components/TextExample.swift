//
//  TextExample.swift
//  CursoIOS
//
//  Created by Victor on 30-07-24.
//

import SwiftUI

struct TextExample: View {
    var body: some View {
        VStack{
            Text("Hello, World!").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Text("Custom").font(.system(size: 40, weight: .ultraLight, design: .monospaced)).bold().italic().underline().foregroundColor(.white).background(.black)
            Text("aris aris aris aris aris aris aris aris")
                .frame(width: 150)
                .lineLimit(3)
                .lineSpacing(125)
        }
    }
}

#Preview {
    TextExample()
}
