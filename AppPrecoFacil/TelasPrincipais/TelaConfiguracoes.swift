//
//  TelaConfiguracoes.swift
//  AppPrecoFacil
//
//  Created by user on 07/10/23.
//

import SwiftUI

struct TelaConfiguracoes: View {
    var body: some View {
        
        NavigationStack{
            
            List {
                navigationTitle("Configurações")
                
                NavigationLink("Sobre Nós", destination: SobreNos())
                NavigationLink("Termos de Uso", destination: TermosUso())
                NavigationLink("Apagar Conta", destination: ApagarConta())
             
                
               }
            }
        }
    }

struct TelaConfiguracoes_Previews: PreviewProvider {
    static var previews: some View {
        TelaConfiguracoes()
    }
}
