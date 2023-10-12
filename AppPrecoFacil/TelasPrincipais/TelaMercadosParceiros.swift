//
//  TelaMercadosParceiros.swift
//  AppPrecoFacil
//
//  Created by user on 07/10/23.
//

import SwiftUI

struct TelaMercadosParceiros: View {
    
    //let publisher = Timer.TimerPublisher(interval: 1.0, runLoop: main, mode: .default).autoconnect()
    //  @State private var currentPosition = 20
    
    var body: some View {
        
        ScrollViewReader { ScrollViewReader in
      
        NavigationStack{
            List (1...30, id: \.self) { item in
                navigationTitle("Mercados Parceiros")
                
                VStack (alignment: .leading) {
                Image("fortaleza")
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 60, height: 60)
                Text("Supermercado Fortaleza")
                    .font(.system(size: 16, weight: .medium, design: .default))
                Text("08:00 às 21:00  - 200m")
                }
                .padding([.top, .bottom], 20) //espacamento
                
                
        
                VStack (alignment: .leading) {
                Image("maraca")
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 60, height: 60)
                Text("Supermercado Maracá")
                    .font(.system(size: 16, weight: .medium, design: .default))
                Text("08:00 às 21:00  - 200m")
                }
                .padding([.top, .bottom],20)
                
                
                
                VStack (alignment: .leading) {
                Image("lucia")
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 60, height: 60)
                Text("Supermercado Santa Lúcia")
                    .font(.system(size: 16, weight: .medium, design: .default))
                Text("08:00 às 21:00  - 200m")
                }
                .padding([.top, .bottom],25)
                
                
                
                VStack (alignment: .leading) {
                Image("favorito")
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 60, height: 60)
                Text("Supermercado Favorito")
                    .font(.system(size: 16, weight: .medium, design: .default))
                Text("08:00 às 21:00  - 200m")
                }
                .padding([.top, .bottom],25)
                
            }
            
        }
    }
}
// .onReceive(Publisher, perform: { _ in
//    currentPosition += 1
//   withAnimation {
// ScrollViewReader.scrollTo(item, Anchor:
//  .top)
///}
// })
}

struct TelaMercadosParceiros_Previews: PreviewProvider {
    static var previews: some View {
        TelaMercadosParceiros()
            .padding(.top, 60)
    }
}

