//
//  IMCView.swift
//  CursoIOS
//
//  Created by Victor on 31-07-24.
//

import SwiftUI

struct IMCView: View {
    init(){
        UINavigationBar.appearance()
            .titleTextAttributes = [.foregroundColor: UIColor.white]
    }
    @State var gender: Int = 0
    @State var height:Double = 150
    @State var edad: Int = 18
    @State var peso: Int = 70
    var body: some View {
        VStack{
            HStack{
                ToggleButton(text: "Hombre", imageName: "heart.fill", gender: 0, selectedGender: $gender)
                ToggleButton(text: "Mujer", imageName: "star.fill", gender: 1, selectedGender: $gender)
            }
            HeightCalculator(selectedHeight: $height)
            HStack{
                ButtonCalculator(titulo: "Edad", valor: $edad)
                ButtonCalculator(titulo: "Peso", valor: $peso)
            }
            IMCCalculatorButton(userWeight: Double(peso), userHeight: height)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(.backgroundApp)
        .navigationTitle("IMC Calculator")
    }
}

struct ToggleButton: View {
    let text:String
    let imageName:String
    let gender:Int
    
    @Binding var selectedGender: Int
    var body: some View {
        let color = if(gender == selectedGender){
            Color.bgComponentSelected
        }else{
            Color.bgComponent
        }
        
        Button(action: {
            selectedGender = gender
        }){
            VStack{
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                InformationText(text: text)
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(color)
        }
    }
}

struct InformationText: View {
    let text:String
    var body: some View {
        Text(text).font(.largeTitle).bold().foregroundColor(.white)
    }
}

struct TitleText: View {
    let text:String
    var body: some View {
        Text(text).font(.title2)
            .foregroundColor(.gray)
    }
}

struct HeightCalculator: View {
    @Binding var selectedHeight:Double
    var body: some View {
        VStack{
            TitleText(text: "Altura")
            InformationText(text: "\(Int(selectedHeight)) cm")
            Slider(value: $selectedHeight, in: 100...220, step: 1)
                .accentColor(.purple)
                .padding(.horizontal, 16)
        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
            .background(.bgComponent)
    }
}

struct ButtonCalculator: View {
    let titulo:String
    @Binding var valor:Int

    var body: some View {
        VStack{
            TitleText(text: titulo)
            InformationText(text: String(valor))
            
            HStack{
                Button(action: {
                    if(valor < 100){
                        valor += 1
                    }
                }){
                    Image(systemName: "plus").resizable().frame(width: 25, height: 25)
                        .frame(width: 70, height: 70)
                        .background(.purple)
                        .foregroundColor(.white)
                        .cornerRadius(100)
                }
                
                
                Button(action: {
                    if(valor > 0){
                        valor = valor - 1
                    }
                }){
                    Image(systemName: "minus").resizable()
                        .frame(width: 30, height: 2)
                        .frame(width: 70, height: 70)
                        .background(.purple)
                        .foregroundColor(.white)
                        .cornerRadius(100)
                }

            }
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(.bgComponent)
    }
}

struct IMCCalculatorButton:View {
    let userWeight: Double
    let userHeight: Double
    var body: some View {
        NavigationStack{
            NavigationLink(destination:{IMCResult(userWight: userWeight, userHeight: userHeight)}){
                Text("Calcular").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold().foregroundColor(.purple)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 100)
                    .background(.bgComponent)
            }
        }
    }
}

#Preview {
    IMCView()
}
