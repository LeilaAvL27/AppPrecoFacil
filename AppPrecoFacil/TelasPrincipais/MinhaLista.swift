//
//  MinhaLista.swift
//  AppPrecoFacil
//
//  Created by user on 28/10/23.
//

import SwiftUI

struct MinhaLista: View {
    
    @State var totalPrice = 0.00
    
    var body: some View {
        //DEFINICOES DA MINHA LISTA DE COMPRAS
        VStack {
            Text("Minha Lista")
                .font(.system(size:40, weight: .semibold,design: .rounded))
                .frame(width: 380, alignment: .center)
            
            //DEFINICOES ITENS DA LISTA
            List {
                ForEach(0..<cartItems.endIndex,
                        id:\.self) {item in
                    HStack {
                        Image(cartItems[item][0] as! String)
                            .resizable()
                            .frame(width: 40, height: 40)
                        VStack(spacing: 5){
                            Text(cartItems[item][1] as! String)
                            Text("R$\(String(format: "%.2f", cartItems[item][2] as! Double))")
                                .foregroundColor(.gray)
                        }
                    }
                }.onDelete{indexSet in
                    cartItems.remove(atOffsets: indexSet)
                    self.calculateTotalPrice()
                }
            }
            Spacer()
            
            //DEFINICOES CALCULADORA DE PREÇO
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(.orange)
                    .opacity(0.8)
                    .frame(width: 350, height: 100)
                
                VStack{
                    Text("Preço Total")
                        .foregroundColor(.white)
                        .font(.system(size: 25))
                        .frame(width: 320, alignment: .leading)
                        .padding(.leading, 60)
                    Text("R$\(String(format: "%.2f", totalPrice))")
                        .foregroundColor(.white)
                        .font(.system(size: 26, weight: .bold))
                        .frame(width: 320, alignment: .leading)
                        .padding(.leading, 60)
                }
              Button(){
                
            } label: {
                   ZStack{
                 //       RoundedRectangle(cornerRadius: 10)
                   //         .strokeBorder()
                     //       .frame(width: 120, height: 50)
                       //     .foregroundColor(.white)
                       // Text("Pay Now>")
                         //   .foregroundColor(.white)
                           // .bold()
                    }
                }.offset(x: 80)
                
            }
            .padding(.bottom, 30) // ALTURA DA CAIXA DE CALCULO
            
        }.onAppear(perform: self.calculateTotalPrice)
    }
    func calculateTotalPrice() {
        totalPrice = 0.00
        for i in 0..<cartItems.count {
            totalPrice += cartItems[i][2] as! Double
        }
    }
}

struct MinhaLista_Previews: PreviewProvider {
    static var previews: some View {
        MinhaLista()
    }
}
