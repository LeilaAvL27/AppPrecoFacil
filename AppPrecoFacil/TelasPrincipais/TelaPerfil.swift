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
                    // Background Profile
                    Rectangle()
                        .ignoresSafeArea()
                        .foregroundColor(.orange)
                        .frame( height: 160) //altura
                    
                    // Circle()
                    // .foregroundColor(.white)
                    // .frame(width: 81, height: 81, alignment: .leading)
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
                        //Alinhar Lista a esquerda da Tela
                        
                        //image profile
                        Image("profile")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 80, height: 80, alignment: .leading)
                            .mask {
                                Circle()
                                    .frame(width: 80, height: 80, alignment: .leading)
                            }
            
                        Text("Rick Morty")
                            .foregroundColor(.black)
                            .padding(.bottom, 100)
                    }
                    
                    VStack (alignment: .leading) {
                        List {
                            //Alinhar Lista a esquerda da Tela
                            
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
    }
}

struct TelaPerfil_Previews: PreviewProvider {
    static var previews: some View {
        TelaPerfil()
    }
}
