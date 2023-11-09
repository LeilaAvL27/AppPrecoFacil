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
            ZStack{
                // BACKGROUND PROFILE
                Rectangle()
                    .ignoresSafeArea()
                    .foregroundColor(.orange)
                    .frame( height: 160)
                
                ZStack(alignment: .trailing){
                    ZStack(alignment: .trailing){
                        //Circle()
                           // .frame(width: 100, height: 100)
                          //  .foregroundColor(.white)
                          //  .padding(.bottom,31)
                        
                        Image("profileFoto")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 90, height: 90)
                            .clipShape(Circle())
                            //.shadow(radius: 10)
                            .padding(.bottom, 30)
                            .padding(.leading, 16) // Ajuste o espaçamento conforme necessário
                         
                    }
                    
                    NavigationLink("João Paulo", destination: ProfileInfoView())
                        .font(.title3)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding(.top,100)
                       
                }
                .padding(.trailing, 270)
            }
             
                
            List {
                NavigationLink("Principal", destination: TabBar())
                NavigationLink("Minha Lista de Compras", destination: MinhaLista())
                NavigationLink("Mercados Parceiros", destination: TelaMercadosParceiros())
                NavigationLink("Configurações", destination: TelaConfiguracoes())
                NavigationLink("Sair", destination: ContentView())
                    .foregroundColor(.red)
            }
            .font(.title3)
        }
    }
}


struct TelaPerfil_Previews: PreviewProvider {
    static var previews: some View {
        TelaPerfil()
    }
}
