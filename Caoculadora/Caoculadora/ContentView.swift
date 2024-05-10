//
//  ContentView.swift
//  Caoculadora
//
//  Created by Pedro Henrique Nunes da Silveira Bezerra on 07/05/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var years: Int?
    @State var months: Int?
    @State var result: Int?
   
        
        let portes = ["Pequeno", "Médio", "Grande"]
        @State var porteSelecionado = "Pequeno"
        
        var body: some View {
        VStack(alignment: .leading) {
            Spacer(minLength: 0)
            Text("Qual a idade do seu cão?")
            Text("Anos")
            TextField("Quantos anos completos tem seu cão?",
                      value: $years,
                      format: .number)
            Text("Meses")
            TextField("Quantos meses tem seu cão?", value: $months, format: .number)
            Spacer(minLength: 0)
            Text("Porte")
            
            //aqui vai o segmented control
            Picker("Portes", selection: $porteSelecionado){
                ForEach(portes, id:\.self) { porte in Text(porte)
                }
            }
            .pickerStyle(.segmented)
            if let result {
                Text("Seu cachorro tem, em idade humana...")
                Text("\(result)")
            }else{
                Spacer(minLength: 0)
                Image(ImageResource.clarinha)
                
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 198, maxHeight: 198.4)
                    .padding(.horizontal, 70)
                    .shadow(radius: 40)
            }
            
            Spacer(minLength: 0)
            Button("Cãocular", action: processYears)
            
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .background(.indigo)
                .foregroundStyle(.white)
                .clipShape(.rect(cornerRadius: 10))
                .bold()
            
            
        }
        .textFieldStyle(.roundedBorder)
        .keyboardType(.numberPad)
        .padding()
    }
    
    func processYears(){
        print("cãocular")
        
        guard let years, let months else {
            print("campos preenchidos")
            return
        }
        guard months > 0 || years > 0 else {
            print("pelo menos um campo deve ser maior que zero")
            return
        }
        result = years * 7 + months * 7/12
        
    }
    
    
}



#Preview {
    ContentView()
}
