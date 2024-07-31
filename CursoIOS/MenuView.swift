//
//  MenuView.swift
//  CursoIOS
//
//  Created by Victor on 31-07-24.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationStack{
            VStack{
                NavigationLink(destination:IMCView()){
                    Text("IMC Calculator")
                }
            }
        }
    }
}

#Preview {
    MenuView()
}
