//
//  TelaHome.swift
//  AppPrecoFacil
//
//  Created by user on 07/10/23.
//

import SwiftUI


struct TelaHome: View {
    
    @State var field = ""
    
    var body: some View {
        
        //barra de pesquisa
        VStack {
            //Image(systemName: "")
            TextField("Pesquise seu produto aqui",
                      text:$field)
            .padding()
            .frame(width: 350, height: 50) //largura , altura
            .background(Color.gray.opacity(0.3))
            .cornerRadius(30)
            .border(.gray.opacity(0.05))
            // .padding(.bottom, 10)
            Spacer()
            
            ZStack(alignment: .topTrailing) {
                ZStack(alignment: .bottom) {
                    Image("profile")
                        .resizable()
                        .cornerRadius(20)
                        .frame(width: 130, height: 200)
                       //.scaledToFit()
                    
                    VStack(alignment: .leading) {
                        Text("rick")
                            .bold()
                        
                        //  Text("\(product.price)$")
                        //    .font(.caption)
                    }
                    .padding()
                    .frame(width: 180, alignment: .leading)
                    .background(.ultraThinMaterial)
                    .cornerRadius(20)
                }
                .frame(width: 180, height: 250)
              // .shadow(radius: 3)
                
                Button {
                    // cartManager.addToCart(product: product)
                } label: {
                    Image(systemName: "plus")
                        .padding(10)
                        .foregroundColor(.black)
                        .background(.white)
                        .cornerRadius(50)
                        .padding()
                }
            }
        }
    }
    
    struct TelaHome_Previews: PreviewProvider {
        static var previews: some View {
            TelaHome()
        }
    }
}
