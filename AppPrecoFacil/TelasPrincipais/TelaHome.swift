//
//  TelaHome.swift
//  AppPrecoFacil
//
//  Created by user on 07/10/23.
//

import SwiftUI

struct TelaHome: View {
    
    @State var goToInfo = false
    @State var goToCart = false
    @State var field = ""
    var colums = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
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
                .padding(.bottom, 30)
            
            ZStack{
                Rectangle()
                    .frame(width: 300, height: 220)
                    .foregroundColor(.orange)
                    .cornerRadius(22)
                
                Image(systemName: "qrcode.viewfinder")
                    .font(.system(size: 120))
                    .foregroundColor(.black)
                    .padding(.bottom, 10)
                
                NavigationLink("Leitor de Código de Barra", destination: TelaHome())
                    .padding(.top, 160)
                    .foregroundColor(.white)
                    .bold()
            }
            // DEFINICOES CAIXAS DE IMAGENS
            .padding(.bottom, 30) // distacia
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
