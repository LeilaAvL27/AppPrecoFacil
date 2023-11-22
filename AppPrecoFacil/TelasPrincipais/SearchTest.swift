//
//  SearchTest.swift
//  AppPrecoFacil
//
//  Created by user on 18/11/23.
//

import SwiftUI

struct SearchTest: View {
    
    @State private var searchText = ""
    @State private var isSearching = false
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBar(text: $searchText, isSearching: $isSearching)
                
                if isSearching {
                    // Aqui você pode navegar para a tela de pesquisa
                    Text("Tela de Pesquisa")
                } else {
                    // Conteúdo principal da sua tela quando não estiver pesquisando
                    Text("Conteúdo Principal")
                }
            }
            .navigationTitle("Título da Tela")
        }
    }
}

struct SearchBar: View {
    @Binding var text: String
    @Binding var isSearching: Bool

    var body: some View {
        HStack {
            TextField("Pesquisar", text: $text)
                .padding(.leading, 24)
                .onTapGesture {
                    isSearching = true
                }

            if isSearching {
                Button(action: {
                    isSearching = false
                    text = ""
                    // Aqui você pode realizar ações quando o botão de cancelar é pressionado
                }) {
                    Text("Cancelar")
                }
                .padding(.trailing, 8)
                .transition(.move(edge: .trailing))
            }
        }
        .padding(.horizontal)
    }
}

struct SearchTest_Previews: PreviewProvider {
    static var previews: some View {
        SearchTest()
    }
}
