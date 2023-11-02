//
//  TermosUso.swift
//  AppPrecoFacil
//
//  Created by user on 14/10/23.
//

import SwiftUI
import SafariServices

struct TermosUso: View {
    var body: some View {
        List{
            
            //TERMOS DE USO
            Button(action: {
                // URL da página externa que você deseja abrir
                if let url = URL(string: "https://mobbin.com/terms") {
                    // Abre a página externa usando o SafariView
                    UIApplication.shared.open(url)
                }
            }) {
                Text("Termos de Uso")
            }
            
            
            //POLÍTICA DE PRIVACIDADE
            Button(action: {
                if let url = URL (string: "https://mobbin.com/privacy") {
                    UIApplication.shared.open(url)
                }
            }) {
                Text("Política de Privacidade")
            }
            
            
        }
    }
}
    

struct TermosUso_Previews: PreviewProvider {
    static var previews: some View {
        TermosUso()
    }
}
