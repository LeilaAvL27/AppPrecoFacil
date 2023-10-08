//
//  TelaHome.swift
//  AppPrecoFacil
//
//  Created by user on 07/10/23.
//

import SwiftUI

struct TelaHome: View {
    var body: some View {
        
        NavigationStack{
            
            Text("Tela Home")
            NavigationLink("Ir para perfil", destination: TelaPerfil())
            
        }
    }
}

struct TelaHome_Previews: PreviewProvider {
    static var previews: some View {
        TelaHome()
    }
}
