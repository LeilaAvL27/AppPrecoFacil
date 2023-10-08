//
//  TelaPesquisa.swift
//  AppPrecoFacil
//
//  Created by user on 07/10/23.
//

import SwiftUI

struct TelaPesquisa: View {
    var body: some View {
        
        NavigationStack{
            
            Text("Tela Pesquisa Produto")
            NavigationLink("Minha Lista", destination: MyList())
            
            }
        }
    }

struct TelaPesquisa_Previews: PreviewProvider {
    static var previews: some View {
        TelaPesquisa()
    }
}
