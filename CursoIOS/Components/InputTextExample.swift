//
//  InputTextExample.swift
//  CursoIOS
//
//  Created by Victor on 31-07-24.
//

import SwiftUI

struct InputTextExample: View {
    @State var miTexto: String = ""
    @State var password: String = ""
    var body: some View {
        TextField("Escribe tu texto", text: $miTexto)
            .keyboardType(.default)
            .padding(16)
            .background(.gray.opacity(0.2))
            .cornerRadius(16)
            .padding(.horizontal, 32)
            .onChange(of: miTexto){
                oldValue, newValue in
                print("El antiguo valor era \(oldValue) y el nuevo es \(newValue)")
            }
    }
}

#Preview {
    InputTextExample()
}
