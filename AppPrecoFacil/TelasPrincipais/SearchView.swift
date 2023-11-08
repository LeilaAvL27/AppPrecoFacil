//
//  SearchView.swift
//  AppPrecoFacil
//
//  Created by user on 07/11/23.
//
import SwiftUI

// Estrutura de dados para os itens que você deseja pesquisar, agora incluindo um preço.
struct Item: Identifiable {
    var id = UUID()
    var name: String
    var price: Double // Atributo de preço adicionado
}

// Sua View principal
struct SearchView: View {
    @State private var searchQuery = "" // O texto de pesquisa
    // Seus dados mockados, agora incluindo preços
    let allItems: [Item] = [
        Item(name: "Apple", price: 1.99),
        Item(name: "Banana", price: 0.99),
        Item(name: "Cherry", price: 2.99),
        Item(name: "Banana Verde", price: 0.80),
    ]
    
    // Filtro que retorna os itens correspondentes à pesquisa
    var filteredItems: [Item] {
        allItems.filter { searchQuery.isEmpty || $0.name.lowercased().contains(searchQuery.lowercased()) }
            .sorted { $0.price < $1.price } // Ordena os itens pelo preço
    }
    
    var body: some View {
        NavigationView {
            List(filteredItems) { item in
                HStack {
                    Text(item.name)
                    Spacer()
                    Text("R$\(item.price, specifier: "%.2f")") // Exibe o preço com duas casas decimais
                }
            }
            .navigationTitle("Items")
            .searchable(text: $searchQuery, prompt: "Search for an item")
        }
    }
}

// Preview da sua interface
struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
