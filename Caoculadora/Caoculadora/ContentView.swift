//
//  ContentView.swift
//  Caoculadora
//
//  Created by Keine Vitor de Santana on 07/05/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var years: Int?
    @State var months: Int?
    @State var result: Int?
    
    let portes = ["Pequeno", "Médio", "Grande"]
    @State var porteSelecionado = "Pequeno"
    @State var porteSelected = Porte.pequeno
    
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            Text("Qual a idade do seu cão?")
                .font(.header5)
            Text("Anos")
                .font(.body1)
            TextField("Quantos anos completos tem seu cão?",
                      value: $years,
                      format: .number)
            
            Text("Meses")
                .font(.body1)
            TextField("Quantos meses tem seu cão?", value: $months, format: .number)
                
            
            Text("Porte")
                .font(.body1)
            Picker("Portes", selection: $porteSelected){
                ForEach(Porte.allCases, id:\.self) { porte in Text(porte.rawValue.capitalized)
                }
            }
            .pickerStyle(.segmented)
            
            Divider()
            
            Spacer()
            
            if let result {
                Text("Seu cachorro tem, em idade humana...")
                    .font(.body1)
                Text("\(result) anos")
                    .font(.display)
            } else {
                Image(ImageResource.clarinha)
                    .resizable()
                    .scaledToFit()
                    .frame(maxHeight: 150)
                    .frame(maxWidth: .infinity)
                    .shadow(radius: 10)
            }
            
            Spacer()
            
            Button("Cãocular", action: processYears)
            .frame(maxWidth: .infinity)
            .frame(maxHeight: 50)
            .background(.indigo)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .bold()
            .font(.body1)
        }
        .textFieldStyle(.roundedBorder)
        .keyboardType(.numberPad)
        .padding()
    }
    
    func processYears() { //a funçao recebe nada e retorna void
        print("Cãocular")
        
        guard let years, let months else {
            print("campo não preenchido")
            return
            
        }
        
        guard months > 0 || years > 0 else{
            print("pelo menos um campo tem que ser maior que zero")
            return
        }
      
        
        result =  porteSelected

        
    }
}

#Preview {
    ContentView()
}
