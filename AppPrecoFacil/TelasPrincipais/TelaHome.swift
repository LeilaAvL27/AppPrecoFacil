//
//  TelaHome.swift
//  AppPrecoFacil
//
//  Created by user on 07/10/23.
//

import SwiftUI


struct TelaHome: View {
    
    @State var goToCart = false
    @State var field = ""
    
    var colums = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
  //  private var gridItemLayout = [GridItem(.flexible()),GridItem(.flexible()), GridItem(.flexible())]
    
    var items: [[Any]] = shopItem
    
    var body: some View {
        
        // DEFINICOES BARRA DE PESQUISA
        VStack {
            // Image(systemName: "")
            TextField("Pesquise seu produto aqui",text:$field)
                .padding()
                .frame(width: 370, height: 50) //largura , altura
                .background(Color.gray.opacity(0.3))
                .cornerRadius(30)
                .border(.gray.opacity(0.05))
            
            
            
            // DEFINICOES CAIXAS DE IMAGENS
                .padding(.bottom, 250) //distacia
            
            Text("PROMOÇÕES DA SEMANA")
                .font(.title2)
                .bold()
                .foregroundColor(.orange)
                .frame(width: 400, alignment: .leading)
            
            ScrollView {
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
}
struct TelaHome_Previews: PreviewProvider {
    static var previews: some View {
        TelaHome()
    }
}
