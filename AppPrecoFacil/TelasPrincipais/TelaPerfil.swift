//
//  TelaPerfil.swift
//  AppPrecoFacil
//
//  Created by user on 07/10/23.
//

import SwiftUI

struct TelaPerfil: View {
    var body: some View {
        
        NavigationStack{
            
            VStack {
                List {
                    NavigationLink("Principal", destination: TelaHome())
                    NavigationLink("Minha Lista", destination: MyList())
                    NavigationLink("Mercados Parceiros", destination: TelaMercadosParceiros())
                    NavigationLink("Configurações", destination: TelaConfiguracoes())
                    NavigationLink("Sair", destination: TelaSair())
                
                    
                    ZStack{
                        // Definicoes de Foto e nome do Perfil
                        Color.white  // cor fundo Tela
                        
                        Rectangle()
                            .scale(1.1)
                            .foregroundColor(.orange)
                            .frame(width: 600, height: 250) //largura, altura
                            .padding(.bottom, 500)
                        
                    }
                }
            }
        }
    }
    
    struct TelaPerfil_Previews: PreviewProvider {
        static var previews: some View {
            TelaPerfil()
        }
    }
}
