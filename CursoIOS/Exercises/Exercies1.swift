//
//  ContentView.swift
//  CursoIOS
//
//  Created by Victor on 26-07-24.
//

import SwiftUI

struct Exercies1: View {
    var body: some View {
        VStack{
            HStack{
                Rectangle().foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Rectangle().foregroundColor(.orange)
                Rectangle().foregroundColor(.yellow)
            }.frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            
            Rectangle().foregroundColor(.orange).frame(height: 100)
            
            HStack{
                Circle().foregroundColor(.green)
                Rectangle().foregroundColor(.black)
                Circle().foregroundColor(.indigo)
            }.frame(height: 250)
            
            Rectangle().foregroundColor(.orange)
                .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            
            HStack{
                Rectangle().foregroundColor(.blue)
                Rectangle().foregroundColor(.orange)
                Rectangle().foregroundColor(.yellow)
            }.frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
        }.background(.red)
    }
}

#Preview {
    Exercies1()
}
