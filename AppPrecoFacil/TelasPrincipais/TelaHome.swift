//
//  TelaHome.swift
//  AppPrecoFacil
//
//  Created by user on 07/10/23.
//

import SwiftUI


struct TelaHome: View {
    var body: some View {
     //   VStack{
            
          Text("Tela Home")
           NavigationLink("Ir para perfil", destination: TelaPerfil())
            
     //   }
        
        TabView{
            Text("Tela Home")
                .tabItem{
                    // Image(systemName: )
                    Text("Home")//nome atalho
                }
            
            MyList()
                .tabItem{
                    //Image(systemName: )
                    Text("Minha Lista")
                }
            
            Text("Pesquisar")
                .tabItem{
                    //Image(systemName: )
                    Text("Pesquisar")
                }
            
            TelaPerfil()
                .tabItem{
                    // image(Image(systemName: )
                    Text("Perfil")
                }
            
        }
        
    }
}

struct TelaHome_Previews: PreviewProvider {
    static var previews: some View {
        TelaHome()
    }
}
