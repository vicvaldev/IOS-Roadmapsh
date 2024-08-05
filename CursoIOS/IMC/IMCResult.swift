//
//  IMCResult.swift
//  CursoIOS
//
//  Created by Victor on 05-08-24.
//

import SwiftUI

struct IMCResult: View {
    let userWight:Double
    let userHeight:Double
    var body: some View {
        VStack{
            Text("Tu resultado").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold().foregroundColor(.white)
            let result = calculateImc(weigth: userWight, heigth: userHeight)
            InformationView(result: result)
        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
            .background(.backgroundApp)
    }
}

func calculateImc(weigth: Double, heigth: Double) -> Double{
    let result = weigth/((heigth/100)*(heigth/100))
    return result
}

struct InformationView:View {
    let result: Double
    var body: some View {
        
        let information = getImcResult(result: result)
        
        VStack{
            Text("\(information.0)").foregroundColor(information.2).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold()
            Text("\(result, specifier: "%.2f")").font(.system(size: 80))
                .bold()
                .foregroundColor(.white)
            Text(information.1)
                .padding(.horizontal, 8)
                .foregroundColor(.white)
                .font(.title2)
        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity).background(.bgComponent).cornerRadius(16).padding(16)
    }
}

func getImcResult(result: Double) -> (String, String, Color){
    let title: String
    let desc: String
    let color: Color
    
    switch result {
    case 0.00..<20:
        title = "Peso bajo"
        desc = "Estás por debajo del peso recomendado según el IMC."
        color = Color.yellow
        break
    case 20.00..<25:
        title = "Peso Normal"
        desc = "Estás en el peso recomendado según el IMC."
        color = Color.green
        break
    case 25.00..<30:
        title = "Sobrepeso"
        desc = "Estás por encima del peso recomendado según el IMC:"
        color = Color.orange
        break
    case 30.00..<100:
        title = "Obesidad"
        desc = "Estás muy por encima del peso recomendado según el IMC."
        color = Color.red
        break
    default:
        title = "ERROR"
        desc = "Ha ocurrido un error"
        color = Color.gray
    }
    
    return (title, desc, color)
}

#Preview {
    IMCResult(userWight: 75, userHeight:  175)
}
