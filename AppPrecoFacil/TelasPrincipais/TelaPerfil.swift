//
//  TelaPerfil.swift
//  AppPrecoFacil
//
//  Created by user on 07/10/23.
//

import SwiftUI

struct TelaPerfil: View {
    var body: some View {
        NavigationStack {
            
            VStack {
                ZStack{
                    // BACKGROUND PROFILE
                    Rectangle()
                        .ignoresSafeArea()
                        .foregroundColor(.orange)
                        .frame( height: 160)
                
                        .overlay (
                            
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
                    
                //  VStack (alignment: .leading) {
                        List {
                            
                            NavigationLink("Principal", destination: TabBar())
                            NavigationLink("Minha Lista de Compras", destination: MinhaLista())
                            NavigationLink("Mercados Parceiros", destination: TelaMercadosParceiros())
                            NavigationLink("Configurações", destination: TelaConfiguracoes())
                            NavigationLink("Sair", destination: ContentView())
                                .foregroundColor(.red)
                            
                        }
                    }
                }
            }
        }
  
struct TelaPerfil_Previews: PreviewProvider {
    static var previews: some View {
        TelaPerfil()
    }
}
