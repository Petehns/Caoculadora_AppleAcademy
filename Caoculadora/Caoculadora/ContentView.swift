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
    var body: some View {
        VStack(alignment: .leading) {
            Text("Qual a idade do seu cão?")
            
            Text("Anos")
            TextField("Quantos anos completos tem seu cão?",
                      value: $years,
                      format: .number)
            Text("Meses")
            TextField("Quantos meses tem seu cão?", value: $months, format: .number)
            Text("Porte")
            if let result {
                Text("Seu cachorro tem, em idade humana...")
            }else{
            }
            Image(ImageResource.clarinha)
            
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 198, maxHeight: 198.4)
                .padding(.horizontal, 70)
        }
            Button("Cãocular"){
                print("cãocular")
                result = 23
            }
//            .frame(maxWidth: .infinity)
//            frame(height)
        }
        .textFieldStyle(.roundedBorder)
        .keyboardType(.numberPad)
        .padding()
    }
    
}

#Preview {
    ContentView()
}
