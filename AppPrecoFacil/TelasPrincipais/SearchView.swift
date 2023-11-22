//
//  SearchView.swift
//  AppPrecoFacil
//
//  Created by user on 07/11/23.

import SwiftUI

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
            Text("Supermercado Fortaleza")
                .font(.title)
                .padding(10)
            
            Image("cafe")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 210, height: 250)
                .clipShape(Rectangle())
                .cornerRadius(15)
                .padding(10)
            
            Text(item.description)
                .font(.title2)
                .bold()
                .foregroundColor(.black)
               
            Text("Por R$ \(item.price, specifier: "%.2f")")
                .font(.largeTitle)
                .foregroundColor(.black)
                .bold()
                .padding(10)
            
            Button(action: {
                // Ação para adicionar o item a minha lista
                cartItems.append(["cafe",item.description,item.price,Color.black])
            }) {
                Text("Adicionar à minha lista")
                    .font(.headline)
                    .frame(width: 220, height: 20)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.orange)
                    .cornerRadius(20)
                    .padding(.top, 40)
            }
            .padding(.bottom, 100) // Ajuste de altura do quadro de informacao
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
        NavigationStack{
            
            List(filteredItems) { item in
                if !searchQuery.isEmpty{
                    NavigationLink(destination: ItemDetailView(item: item)) {
                        HStack {
                            Text(item.description)
                            Spacer()
                            Text("R$ \(item.price, specifier: "%.2f")")
                                .foregroundColor(.blue)
                        }
                    }
                   
                }
               
                
            }
            .navigationTitle("Pesquisar")
        }
       
        .searchable(text: $searchQuery)
        .onAppear {
            loadItems()
        }
    }
    
    // Carrega os itens diretamente da variável 'shopItem' definida em 'Dados.swift'
    private func loadItems() {
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

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
