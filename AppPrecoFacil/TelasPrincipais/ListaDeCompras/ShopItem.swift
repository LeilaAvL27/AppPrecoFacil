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
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(Color.green)
                .opacity(0.25)
                .frame(width: 170, height: 230)
            VStack{
                Image(imageName)
                    .resizable()
                    .frame(width: 80, height: 80)
                Text(title)
                Button() {
                    cartItems.append(shopItem[selfIndex])
                } label: {
                    Text("$\(String(format: "%.2f", 8.00))")
                        .foregroundColor(.black)
                        .frame(width: 100, height: 40)
                        .background(color)
                }
            }
        }
    }
}

struct ShopItem_Previews: PreviewProvider {
    static var previews: some View {
        ShopItem(imageName: "omo", title: "omo sabão", price: 8.00, color: Color.green, selfIndex: 0)
    }
}
