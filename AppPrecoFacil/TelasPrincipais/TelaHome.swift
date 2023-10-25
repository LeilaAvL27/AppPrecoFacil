//
//  TelaHome.swift
//  AppPrecoFacil
//
//  Created by user on 07/10/23.
//

import SwiftUI


struct TelaHome: View {
    
    @State var field = ""
    
    var body: some View {
        //barra de pesquisa
        VStack {
            //Image(systemName: "")
            TextField("Pesquise seu produto aqui", text:$field)
                .padding()
                .frame(width: 350, height: 50) //largura , altura
                .background(Color.gray.opacity(0.3))
                .cornerRadius(30)
                .border(.gray.opacity(0.05))
            // .padding(.bottom, 10)
            Spacer()
            
            //cards das PROMOCOES
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(.green)
                    .opacity(0.25)
                    .frame(width: 170, height: 230)
                VStack {
                    Image("omo")
                        .resizable()
                        .frame(width: 80, height: 80)
                    Text("sabão Omo")
//                    Button() {
//                        
//                    } label: {
//                        Text("$\(String(format: "%.2f", 8.00))")
//                        foregroundColor(.white)
//                            .frame(width: 100, height: 40)
//                            .background(Color.green)
//                    }
                }
            }
        }
    }
}

struct TelaHome_Previews: PreviewProvider {
    static var previews: some View {
        TelaHome()
    }
}
