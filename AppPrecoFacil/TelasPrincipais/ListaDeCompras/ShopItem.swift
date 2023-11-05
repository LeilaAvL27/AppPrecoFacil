//
//  ShopItem.swift
//  AppPrecoFacil
//
//  Created by user on 28/10/23.
//

import SwiftUI

struct ShopItem: View {
    
    var imageName: String
    var title: String
    var price: Double
    var color: Color
    var selfIndex: Int
    
    var body: some View {
        ZStack {
            //RoundedRectangle(cornerRadius: 22)
           //     .foregroundColor(Color.gray)
            //    .opacity(0.25)
            //    .frame(width: 150, height: 200)
            VStack{
                // Text(mercado)
                //     .bold()
                 //   .foregroundColor(.orange)
                  //   .frame(height: 30)
                  //   .background(Color.black.opacity(0.2))
                
                Image(imageName)
                    .resizable()
                    .frame(width: 120, height: 120)
                    .cornerRadius(10)
                
                Text(title)
                    .bold()
                 
                Button() {
                    cartItems.append(shopItem[selfIndex])
                } label: {
                    Text("Por R$\(String(format: "%.2f", price))")
                        .foregroundColor(.yellow)
                        .bold()
                        .frame(width: 100, height: 40)
                        .background(color)
                }
            }
            
        }
    }
}

struct ShopItem_Previews: PreviewProvider {
    static var previews: some View {
        ShopItem(imageName: "omo", title: "Sabão em Pó", price: 8.00, color: Color.red, selfIndex: 0)
    }
}
