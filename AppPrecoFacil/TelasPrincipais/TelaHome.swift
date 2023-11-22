//
//  TelaHome.swift
//  AppPrecoFacil
//
//  Created by user on 07/10/23.
//

import SwiftUI

struct TelaHome: View {
    
    @State var goToCart = false
    @State var text = ""
    var colums = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var items: [[Any]] = shopItem
    
    var body: some View {
        // DEFINICOES BARRA DE PESQUISA
        VStack {
            HStack{
                //Image(systemName: "magnifyingglass")
                TextField("Pesquise seu produto aqui", text: $text)
                    .padding(12) // altura da barra
                    .padding(.horizontal, 10)
                    .background(Color(.systemGray5))
                    .cornerRadius(22)
                    .padding(.horizontal, 20) //largura da barra
                    .padding(.bottom, 20) // distancia da barra
                
                Button(action: {
                    text = ""
                    // Aqui você pode realizar ações quando o botão de cancelar é pressionado
                }) {
                    Text("Cancelar")
                }
                .padding(.trailing, 3)
                .padding(.bottom)
                .font(.callout)
                .transition(.move(edge: .trailing))
            }
            
            
            // LEITOR DE CÓDIGO DE BARRAS 
            ZStack{
                Rectangle()
                    .frame(width: 285, height: 205)
                    .foregroundColor(.orange)
                    .cornerRadius(20)
                
                Image(systemName: "qrcode.viewfinder")
                    .font(.system(size: 100))
                    .foregroundColor(.black)
                    .padding(.bottom, 10)
                
                NavigationLink("Leitor de Código de Barra", destination: TelaHome())
                    .padding(.top, 140)
                    .foregroundColor(.white)
                    .bold()
                
            }
            // DEFINICOES CAIXAS DE IMAGENS
            .padding(.bottom, 30) // distancia
            Text("OFERTAS DA SEMANA")
                .font(.title2)
                .bold()
                .foregroundColor(.black)
                .frame(width: 400, alignment: .leading)
            
            ScrollView {
                LazyVGrid(columns: colums, spacing: 30) {
                    ForEach(0..<items.count, id:\.self) {
                        item in
                        ShopItem(imageName: items[item][0] as! String, title: items[item][1] as! String, price: items[item][2] as! Double, color: items[item][3] as! Color, selfIndex: item)
                    }
                    
                }
                
            } .padding(10) //MARGEM CARDS
            
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
            
        } .padding(15)  //MARGEM DE TODA A TELA
    }
}

struct TelaHome_Previews: PreviewProvider {
    static var previews: some View {
        TelaHome()
    }
}
