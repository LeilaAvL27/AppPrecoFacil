//
//  SearchView.swift
//  AppPrecoFacil
//
//  Created by user on 07/11/23.

import SwiftUI

// Presumindo que a variável 'shopItem' e a cor estão acessíveis aqui
// Se não estiverem, você teria que importar o arquivo ou módulo onde eles estão definidos.

// Atualiza a estrutura Item para incluir as novas propriedades
struct Item: Identifiable {
    let id = UUID()
    let identifier: String
    let description: String
    let price: Double
    let color: Color
    
}

// View de detalhes para cada item
struct ItemDetailView: View {
    var item: Item
    
    var body: some View {
        VStack {
            Image("cafe")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 210, height: 260)
                .clipShape(Rectangle())
                .cornerRadius(10)
                .padding(10)
            
            Text(item.description)
                .font(.title)
                .bold()
                .foregroundColor(.black)
                .padding(10)
            
            Text("R$ \(item.price, specifier: "%.2f")")
                .font(.largeTitle)
                .foregroundColor(.black)
                .bold()
                .padding(10)
            
            Text("Supermercado Fortaleza")
            
            // Adicionando o botão "Adicionar ao Carrinho"
            Button(action: {
                // Ação a ser realizada quando o botão for tocado
                // Por exemplo, adicionar o item ao carrinho de compras
            }) {
                Text("Adicionar ao Carrinho")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(15)
            }
            .padding(.bottom, 100)
        }        
        
        
        
    }
}


// Sua View principal
struct SearchView: View {
    @State private var searchQuery = ""
    @State private var allItems: [Item] = []
    
    // Filtro que retorna os itens correspondentes à pesquisa
    var filteredItems: [Item] {
        allItems.filter { searchQuery.isEmpty || $0.description.localizedCaseInsensitiveContains(searchQuery) }
            .sorted { $0.price < $1.price } // Ordena os itens pelo preço
    }
    
    var body: some View {
        NavigationView {
            List(filteredItems) { item in
                NavigationLink(destination: ItemDetailView(item: item)) {
                    HStack {
                        Text(item.description)
                        Spacer()
                        Text("R$ \(item.price, specifier: "%.2f")")
                            .foregroundColor(item.color)
                    }
                }
            }
            .navigationTitle("Items")
            .searchable(text: $searchQuery)
            .onAppear {
                loadItems()
            }
        }
    }
    
    // Carrega os itens diretamente da variável 'shopItem' definida em 'Dados.swift'
    private func loadItems() {
        // A conversão é feita aqui diretamente do 'shopItem'
        allItems = shopItem.compactMap { array in
            if let identifier = array[0] as? String,
               let description = array[1] as? String,
               let price = array[2] as? Double,
               let color = array[3] as? Color {
                return Item(identifier: identifier, description: description, price: price, color: color)
            }
            return nil
        }
    }
}

// Preview da sua interface
struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
