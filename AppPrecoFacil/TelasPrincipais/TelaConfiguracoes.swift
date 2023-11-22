//
//  TelaConfiguracoes.swift
//  AppPrecoFacil
//
//  Created by user on 07/10/23.
//

import SwiftUI

struct TelaConfiguracoes: View {
    var body: some View {
        List {
            NavigationLink("Detalhes do Perfil", destination: ProfileInfoView())
            NavigationLink("Termos de Uso e Política de Privacidade", destination: TermosUso())
            NavigationLink("Sobre Nós", destination: SobreNos())
          
        }
        
        .navigationTitle("Configurações")
    }
}


struct TelaConfiguracoes_Previews: PreviewProvider {
    static var previews: some View {
        TelaConfiguracoes()
    }
}
