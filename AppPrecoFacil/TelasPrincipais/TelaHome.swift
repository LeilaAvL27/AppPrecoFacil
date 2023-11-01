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
                .padding(.bottom, 250)
            ScrollView {
                Text("PROMOÇÕES")
                    .font(.title3)
                    .bold()
                    .foregroundColor(.black)
                    .frame(width: 400, alignment: .leading)
                
                
                // LazyVGrid(columns: gridItemLayout) {
                //     ForEach(0..<21) { _ in
                //      VStack {
                //           Image("cafe")
                //              .resizable()
                //              .frame(maxWidth: .infinity, maxHeight: 100)
                //  .frame(width: 118, height: 117) // Define as dimensões da imagem
                //           .cornerRadius(22)
                
                //       Text("Café 3 Corações Extraforte - 250g")
                //         .font(.system(size: 12, weight: .light, design: .serif))
                
                
                //       }
                //     }
                //   }
                // }
                //   .padding([.horizontal], 24)
                // }
                //}
                //}
                
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
