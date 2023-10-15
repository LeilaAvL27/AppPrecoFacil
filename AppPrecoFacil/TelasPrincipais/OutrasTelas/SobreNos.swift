//
//  SobreNos.swift
//  AppPrecoFacil
//
//  Created by user on 14/10/23.
//

import SwiftUI

struct SobreNos: View {
    var body: some View {
        
        NavigationStack{
          
            // List {

            
                  Image("Logo")
                      .resizable()
                      .aspectRatio(contentMode: .fill)
                      .frame(width: 100, height: 100, alignment: .leading)
                     // .padding(.bottom,300)
                  Text("Preço Fácil")
                      .font(.largeTitle)
                      .bold()
                      .foregroundColor(.yellow)
                  //    .padding(.bottom, 300)
                  
                  Text("Inserir texto Sobre Nós aqui")
                  .padding(.bottom, 400)
            
             // }
            
           }
        }
    }

struct SobreNos_Previews: PreviewProvider {
    static var previews: some View {
        SobreNos()
    }
}
