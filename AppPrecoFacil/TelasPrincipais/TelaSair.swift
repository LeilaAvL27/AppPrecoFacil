//
//  TelaSair.swift
//  AppPrecoFacil
//
//  Created by user on 07/10/23.
//

import SwiftUI

struct TelaSair: View {
    var body: some View {
        List{
            NavigationLink("Sair", destination: SplashScreen())
                .foregroundColor(.red)
            
        }
    }
}

struct TelaSair_Previews: PreviewProvider {
    static var previews: some View {
        TelaSair()
    }
}
