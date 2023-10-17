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
            TextField("Pesquise seu produto aqui",
                      text:$field)
            .padding()
            .frame(width: 350, height: 50) //largura , altura
            .background(Color.gray.opacity(0.3))
            .cornerRadius(30)
            .border(.gray.opacity(0.05))
           // .padding(.bottom, 10)
            Spacer()
            
            Text("Tela Home")
             NavigationLink("Ir para perfil", destination: TelaPerfil())
            Spacer()
        }

        
    }
}

struct TelaHome_Previews: PreviewProvider {
    static var previews: some View {
        TelaHome()
    }
}
