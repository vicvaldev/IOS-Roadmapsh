//
//  ButtonExample.swift
//  CursoIOS
//
//  Created by Victor on 31-07-24.
//

import SwiftUI

struct ButtonExample: View {
    var body: some View {
        Button("Hola"){
            print("henlo")
        }
        
        Button(action: {
            print("henlo2")
        }, label: {
            Text("Henlo2")
        })
    }
}

struct Counter: View {
    @State var subsNumber = 0
    var body: some View {
        Button(action: {
            subsNumber += 1
        }, label: {
                Text("Suscriptores: \(subsNumber)")
                .bold()
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .frame(height: 50)
                .foregroundColor(.white)
                .background(.red)
                .cornerRadius(10)
        })
    }
}

#Preview {
    Counter()
}
