//
//  SobreNos.swift
//  AppPrecoFacil
//
//  Created by user on 14/10/23.
//

import SwiftUI

struct SobreNos: View {
    var body: some View {
        
        NavigationStack{
                  Image("sobreNos")
                      .resizable()
                      .aspectRatio(contentMode: .fill)
                      .frame(width: 400, height: 400, alignment: .center)
                     // .padding(.bottom,300)
            
           }
        }
    }

struct SobreNos_Previews: PreviewProvider {
    static var previews: some View {
        SobreNos()
    }
}

