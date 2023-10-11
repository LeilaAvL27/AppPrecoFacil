//
//  TelaPerfil.swift
//  AppPrecoFacil
//
//  Created by user on 07/10/23.
//

import SwiftUI

struct TelaPerfil: View {
    var body: some View {
        
        
        
        VStack{
            // Definicoes de Foto e nome do Perfil
            Rectangle()
            
                .ignoresSafeArea()
                .foregroundColor(.orange)
                .frame( height: 150) //altura
            
            
            List {
                //VStack (alignment: .leading) {
                
                
                NavigationLink("Principal", destination: TelaHome())
                NavigationLink("Minha Lista", destination: MyList())
                NavigationLink("Mercados Parceiros", destination: TelaMercadosParceiros())
                NavigationLink("Configurações", destination: TelaConfiguracoes())
                NavigationLink("Sair", destination: TelaSair())
                
                
            }
        }
    }
    
    struct TelaPerfil_Previews: PreviewProvider {
        static var previews: some View {
            TelaPerfil()
        }
    }
}
