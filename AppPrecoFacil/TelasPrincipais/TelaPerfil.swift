//
//  TelaPerfil.swift
//  AppPrecoFacil
//
//  Created by user on 07/10/23.
//

import SwiftUI

struct TelaPerfil: View {
    var body: some View {
        
        ZStack{
            // Background Profile
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(.orange)
                .frame( height: 150) //altura
            
            Circle()
            //.foregroundColor(.gray)
                .frame(width: 80, height: 80, alignment: .leading)
                .overlay (
                    
                    //image profile
                    Image("profile")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 80, alignment: .leading)
                        .mask {
                            Circle()
                                .frame(width: 80, height: 80, alignment: .leading)
                        }
                )
            Text("Rick Morty")
                .foregroundColor(.black)
                .padding(.bottom, 100)
        }
        
        VStack (alignment: .leading) {
           List {
                
                NavigationLink("Principal", destination: TelaHome())
                NavigationLink("Minha Lista", destination: MyList())
                NavigationLink("Mercados Parceiros", destination: TelaMercadosParceiros())
                NavigationLink("Configurações", destination: TelaConfiguracoes())
                NavigationLink("Sair", destination: TelaSair())
                
                
            }
        }
    }
    
    struct TelaPerfil_Previews: PreviewProvider {
        static var previews: some View {
            TelaPerfil()
        }
    }
}
