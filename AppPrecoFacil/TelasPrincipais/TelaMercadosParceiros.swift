//
//  TelaMercadosParceiros.swift
//  AppPrecoFacil
//
//  Created by user on 07/10/23.
//

import SwiftUI
import SafariServices

struct TelaMercadosParceiros: View {
    
    var body: some View {
        List (1...2, id: \.self) { item in
            //SUPERMERCADO FORTALEZA
            HStack {
                ZStack{
                    Circle()
                        .frame(width: 64, height: 64)
                        .foregroundColor(.gray)
                    Image("fortaleza")
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 62, height: 62)
                }
                VStack (alignment: .leading) {
                    Text("Supermercado Fortaleza")
                        .font(.system(size: 16, weight: .medium, design: .default))
                    Text("Seg a Sáb: 7:00 às 21:00")
                    Text("Dom e Feriados: 7:00 às 13:00")
                    
                    //SAIBA MAIS
                    Button(action: {
                        // URL da página externa que você deseja abrir
                        if let url = URL(string: "https://www.google.com/search?q=supermercado+fortaleza&sca_esv=578690205&sxsrf=AM9HkKm2iMIYuq56TBqB2udz2_n6z8M3VQ%3A1698891386222&ei=egZDZc-ODfzS1sQP3bya0AI&oq=supermercado+fort&gs_lp=Egxnd3Mtd2l6LXNlcnAiEXN1cGVybWVyY2FkbyBmb3J0KgIIADIHECMYigUYJzIHECMYigUYJzIIEAAYgAQYsQMyCxAuGK8BGMcBGIAEMgsQLhivARjHARiABDILEC4YgAQYxwEYrwEyBRAAGIAEMgUQABiABDILEC4YrwEYxwEYgAQyCxAuGIAEGMcBGK8BSPXqAVDG0AFYxOIBcAJ4AZABAJgBvgGgAc8NqgEEMC4xMLgBA8gBAPgBAcICChAAGEcY1gQYsAPCAgoQABiKBRiwAxhDwgINEC4YrwEYxwEYigUYQ8ICCxAAGIAEGLEDGMkDwgILEAAYigUYsQMYgwHCAgsQABiABBixAxiDAcICHBAuGK8BGMcBGIoFGEMYlwUY3AQY3gQY4ATYAQHCAg0QLhivARjHARiKBRgnwgIaEC4YrwEYxwEYigUYlwUY3AQY3gQY4ATYAQHiAwQYACBBiAYBkAYJugYGCAEQARgU&sclient=gws-wiz-serp") {
                            // Abre a página externa usando o SafariView
                            UIApplication.shared.open(url)
                        }
                    }) {
                        Text("Saiba mais")
                    }

                }
            }
            .padding([.top, .bottom], 20) //espacamento
            
            //SUPERMERCADO MARACÁ
            HStack {
                ZStack{
                    Circle()
                        .frame(width: 64, height: 64)
                        .foregroundColor(.gray)
                    Image("maraca")
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 62, height: 62)
                }
                VStack (alignment: .leading) {
                    Text("Supermercado Maracá")
                        .font(.system(size: 16, weight: .medium, design: .default))
                    Text("Seg a Sáb: 7:00 às 21:00")
                    Text("Dom e Feriados: 7:00 às 13:00")
                  
                    //SAIBA MAIS
                    Button(action: {
                        // URL da página externa que você deseja abrir
                        if let url = URL(string: "https://www.google.com/search?q=supermercado+marac%C3%A1&sca_esv=578690205&sxsrf=AM9HkKnp_JU8t-UnE7y_4vNQ7HT6xF7HBw%3A1698891348911&ei=VAZDZeucN-DL1sQPj9Wu6AU&oq=supermercado+mara&gs_lp=Egxnd3Mtd2l6LXNlcnAiEXN1cGVybWVyY2FkbyBtYXJhKgIIADIHECMYigUYJzILEC4YgAQYxwEYrwEyBRAAGIAEMgUQABiABDIFEAAYgAQyBRAAGIAEMgUQABiABDIFEAAYgAQyBRAAGIAEMgUQABiABEi3LFD2BVjWIHABeAGQAQCYAcMBoAHqFKoBBDAuMTW4AQPIAQD4AQHCAgoQABhHGNYEGLADwgIKEAAYigUYsAMYQ8ICFhAuGIoFGMcBGK8BGMgDGLADGEPYAQHCAhYQLhiKBRjHARjRAxjIAxiwAxhD2AEBwgIHEAAYigUYQ8ICDRAuGK8BGMcBGIoFGEPCAgsQLhivARjHARiABMICCxAAGIAEGLEDGIMBwgILEAAYigUYsQMYgwHCAg0QLhivARjHARiKBRgnwgILEAAYgAQYsQMYyQPCAggQABiABBixA8ICGhAuGIAEGMcBGK8BGJcFGNwEGN4EGOAE2AEC4gMEGAAgQYgGAZAGEboGBggBEAEYCLoGBggCEAEYFA&sclient=gws-wiz-serp") {
                            // Abre a página externa usando o SafariView
                            UIApplication.shared.open(url)
                        }
                    }) {
                        Text("Saiba mais")
                    }
                    
                }
            }
            .padding([.top, .bottom],20)
            
            //SUPERMERCADO SANTA LUCIA
            HStack {
                ZStack{
                    Circle()
                        .frame(width: 64, height: 64)
                        .foregroundColor(.gray)
                    
                    Image("lucia")
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 62, height: 62)
                }
                VStack (alignment: .leading){
                    Text("Supermercado Santa Lúcia")
                        .font(.system(size: 16, weight: .medium, design: .default))
                    Text("Seg a Sáb: 7:00 às 21:00")
                    Text("Dom e Feriados: 7:00 às 13:00")
                    
                    //SAIBA MAIS
                    Button(action: {
                        // URL da página externa que você deseja abrir
                        if let url = URL(string: "https://www.google.com/search?q=supermercado+santa+lucia&sca_esv=578690205&sxsrf=AM9HkKn9nXiFoVHIPxVjN4o4-QLUF1hVdQ%3A1698891296954&ei=IAZDZZrmOavM1sQPqoCswAU&oq=supermercado+santa&gs_lp=Egxnd3Mtd2l6LXNlcnAiEnN1cGVybWVyY2FkbyBzYW50YSoCCAAyBRAAGIAEMgsQLhivARjHARiABDIFEAAYgAQyBRAAGIAEMgUQABiABDIFEAAYgAQyCxAuGIAEGMcBGK8BMgUQABiABDILEAAYgAQYsQMYgwEyBRAAGIAESKEmUPwFWOoecAF4AZABAJgBqQKgAeISqgEGMC4xMi4xuAEDyAEA-AEBwgIKEAAYRxjWBBiwA8ICChAAGIoFGLADGEPCAhYQLhiKBRjHARivARjIAxiwAxhD2AEBwgIWEC4YigUYxwEY0QMYyAMYsAMYQ9gBAcICDRAuGK8BGMcBGIoFGCfCAgcQIxiKBRgnwgIIEAAYgAQYsQPCAgcQABiKBRhDwgIaEC4YrwEYxwEYigUYlwUY3AQY3gQY4ATYAQLCAgsQABiKBRixAxiDAeIDBBgAIEGIBgGQBgy6BgQIARgIugYGCAIQARgU&sclient=gws-wiz-serp") {
                            // Abre a página externa usando o SafariView
                            UIApplication.shared.open(url)
                        }
                    }) {
                        Text("Saiba mais")
                    }
                     
                }
            }
            .padding([.top, .bottom],25)
            
            //SUPERMERCADO FAVORITO
            HStack {
                ZStack{
                    Circle()
                        .frame(width: 64, height: 64)
                        .foregroundColor(.gray)
                    Image("favorito")
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 62, height: 62)
                }
                VStack (alignment: .leading){
                    Text("Supermercado Favorito")
                        .font(.system(size: 16, weight: .medium, design: .default))
                    Text("Seg a Sáb: 7:00 às 21:00")
                    Text("Dom e Feriados: 7:00 às 13:00")
                    
                    //SAIBA MAIS
                    Button(action: {
                        // URL da página externa que você deseja abrir
                        if let url = URL(string: "https://www.google.com/search?q=supermercado+favorito&sca_esv=578690205&sxsrf=AM9HkKmBcSGG-wjkdqGva_gZ6br0sTldHg%3A1698890822629&ei=RgRDZe-AJq3f1sQPgpOG-AQ&ved=0ahUKEwjvu_q_naSCAxWtr5UCHYKJAU8Q4dUDCBA&uact=5&oq=supermercado+favorito&gs_lp=Egxnd3Mtd2l6LXNlcnAiFXN1cGVybWVyY2FkbyBmYXZvcml0bzINEC4YrwEYxwEYigUYJzIFEAAYgAQyBRAAGIAEMgUQABiABDIFEAAYgAQyBRAAGIAEMgUQABiABDILEC4YrwEYxwEYgAQyCxAuGIAEGMcBGK8BMgUQABiABDIaEC4YrwEYxwEYigUYlwUY3AQY3gQY4ATYAQFI3osBUOYFWNeJAXAIeAKQAQGYAf8BoAHQGaoBBjAuMTYuMrgBA8gBAPgBAcICBBAAGEfCAgYQABgHGB7CAgQQABgewgIaEC4YgAQYxwEYrwEYlwUY3AQY3gQY4ATYAQHCAgcQIxiKBRgnwgIIEAAYgAQYsQPCAgsQABiKBRixAxiDAcICCBAAGBYYHhgPwgIGEAAYFhge4gMEGAAgQYgGAZAGCLoGBggBEAEYFA&sclient=gws-wiz-serp") {
                            // Abre a página externa usando o SafariView
                            UIApplication.shared.open(url)
                        }
                    }) {
                        Text("Saiba mais")
                    }
                    
                }
               
            }
            .padding([.top, .bottom], 20)
            
        }
        .navigationTitle("Mercados Parceiros")
        .padding([.top, .bottom], 10)
    }
}


struct TelaMercadosParceiros_Previews: PreviewProvider {
    static var previews: some View {
        TelaMercadosParceiros()
            .padding(.top, 20)
    }
}

