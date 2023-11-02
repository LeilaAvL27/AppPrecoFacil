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
            Button(action: {
                // Fecha o aplicativo
                UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
            }) {
                Text("Sair")
            }
            
        }
    }
}

struct TelaSair_Previews: PreviewProvider {
    static var previews: some View {
        TelaSair()
    }
}
