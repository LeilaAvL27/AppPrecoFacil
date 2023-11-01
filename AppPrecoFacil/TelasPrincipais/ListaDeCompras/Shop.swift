//
//  Shop.swift
//  AppPrecoFacil
//
//  Created by user on 28/10/23.
//

import SwiftUI

struct Shop: View {
    
    @State var goToCart = false
    
    var colums = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var items: [[Any]] = shopItem
    
    var body: some View {
        VStack(spacing: 5){
            VStack {
                Text("Bom dia")
                Text("Ordem dos Itens")
                Spacer().frame(height: 75)
                Text("Itens")
                    .frame(width: 320, alignment: .leading)
                    .foregroundColor(.gray)
            } .padding(20)
            ScrollView() {
                LazyVGrid(columns: colums, spacing: 30) {
                    ForEach(0..<items.count, id:\.self) {
                        item in
                        ShopItem(imageName: items[item][0] as! String, title: items[item][1] as! String, price: items[item][2] as! Double, color: items[item][3] as! Color, selfIndex: item)
                        
                    }
                }
            } .padding(15)
        }
        .navigationDestination(isPresented: $goToCart) {
            Cart()
        }
        .toolbar{
            ToolbarItem(placement:
                    .navigationBarTrailing)  {
                        Button() {
                            goToCart = true
                        } label: {
                            Image(systemName: "cart")
                        }
                    }
        }
    }
    
    struct Shop_Previews: PreviewProvider {
        static var previews: some View {
            Shop()
        }
    }
}