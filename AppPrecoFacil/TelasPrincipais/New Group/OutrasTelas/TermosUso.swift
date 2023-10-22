//
//  TermosUso.swift
//  AppPrecoFacil
//
//  Created by user on 14/10/23.
//

import SwiftUI

struct TermosUso: View {
    var body: some View {
        
        Form {
            HStack {
                Image(systemName: "airplane")
                Text ("Airplane Mode")
            }
            
            HStack {
                Image(systemName: "airplane")
                Text("Wifi")
            }
        }
    }
}

struct TermosUso_Previews: PreviewProvider {
    static var previews: some View {
        TermosUso()
    }
}
