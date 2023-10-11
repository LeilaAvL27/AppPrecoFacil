//
//  TelaMercadosParceiros.swift
//  AppPrecoFacil
//
//  Created by user on 07/10/23.
//

import SwiftUI

struct TelaMercadosParceiros: View {
    var body: some View {
        
        NavigationStack{
            List {
                VStack (alignment: .leading) {
                    Text("Supermercado Fortaleza")
                        .font(.system(size: 18, weight: .medium, design: .default))
                    Text("08:00 às 21:00  - 200m")
                }
                .padding([.top, .bottom], 25) //espacamento
                
                VStack (alignment: .leading) {
                    Text("Supermercado Maracá")
                        .font(.system(size: 18, weight: .medium, design: .default))
                    Text("08:00 às 21:00  - 200m")
                }
                .padding([.top, .bottom],25)
                
                VStack (alignment: .leading) {
                    Text("Supermercado Santa Lúcia")
                        .font(.system(size: 18, weight: .medium, design: .default))
                    Text("08:00 às 21:00  - 200m")
                }
                .padding([.top, .bottom],25)
                
                VStack (alignment: .leading) {
                    Text("Supermercado Favorito")
                        .font(.system(size: 18, weight: .medium, design: .default))
                    Text("08:00 às 21:00  - 200m")
                    
                }
                .padding([.top, .bottom],25)
                
            }
        }
    }
}


struct TelaMercadosParceiros_Previews: PreviewProvider {
    static var previews: some View {
        TelaMercadosParceiros()
            .padding(.top, 60)
    }
}
