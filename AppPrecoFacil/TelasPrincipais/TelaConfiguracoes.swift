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
                
                Text("Sobre Nós")
                Text("Política de Privacidade")
                Text("Termos de Uso")
                Text("Apagar Conta")
                
               }
            }
        }
    }

struct TelaConfiguracoes_Previews: PreviewProvider {
    static var previews: some View {
        TelaConfiguracoes()
    }
}
