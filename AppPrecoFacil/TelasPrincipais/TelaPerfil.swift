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
                    
                    VStack (alignment: .leading) {
                        Image("profile")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                            .padding(.bottom, 5) // Ajuste o espaçamento conforme necessário
                        
                        Text("Rick Morty")
                            .font(.title3)
                            .fontWeight(.bold)
                    }
                }
                            
                        List {
                            
                            NavigationLink("Principal", destination: TabBar())
                            NavigationLink("Minha Lista de Compras", destination: MinhaLista())
                            NavigationLink("Mercados Parceiros", destination: TelaMercadosParceiros())
                            NavigationLink("Configurações", destination: TelaConfiguracoes())
                            Button(action: {
                                // Fecha o aplicativo
                                UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                            }) {
                                Text("Sair")
                                    .foregroundColor(.red)
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
