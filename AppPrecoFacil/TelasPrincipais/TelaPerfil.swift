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
                
                ZStack{
                    ZStack{
                        //Circle()
                           // .frame(width: 100, height: 100)
                          //  .foregroundColor(.white)
                          //  .padding(.bottom,31)
                        
                        Image(systemName: "person.crop.circle.fill")
                            .resizable()
                            .foregroundColor(.white)
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                            //.shadow(radius: 10)
                            .padding(.bottom, 30) // Ajuste o espaçamento conforme necessário
                    }
                    
                    Text("Fulano de Tal")
                        .font(.title3)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding(.top,100)
                       
                }
                
            }
             
                
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


struct TelaPerfil_Previews: PreviewProvider {
    static var previews: some View {
        TelaPerfil()
    }
}
