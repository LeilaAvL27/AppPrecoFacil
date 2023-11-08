//
//  TabBar.swift
//  AppPrecoFacil
//
//  Created by user on 17/10/23.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        
        TabView {
            TelaHome()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            MinhaLista()
                .tabItem{
                    Image(systemName: "list.bullet.clipboard")
                    Text("Minha Lista")
                }
            
            SearchView ()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Pesquisar")
                }
            
            TelaPerfil()
                .tabItem{
                    Image(systemName: "person.crop.circle")
                    Text("Perfil")
                }
            
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
