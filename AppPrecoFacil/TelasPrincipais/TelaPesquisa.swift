//
//  TelaPesquisa.swift
//  AppPrecoFacil
//
//  Created by user on 07/10/23.
//

import SwiftUI

struct TelaPesquisa: View {
    
    @Binding var text: String
    @State private var isEditing = false
    
    var body: some View {
        HStack {
            TextField("Pesquisar...", text: $text)
                .padding(12)
                .padding(.horizontal, 10)
                .background(Color(.systemGray5))
                .cornerRadius(22)
                .padding(.horizontal, 30)
                .onTapGesture {
                    self.isEditing = true
                }
            if isEditing {
                Button(action: {
                    self.isEditing = false
                    self.text = ""
                }) {
                    Text("Cancelar")
                }
                .padding(.trailing, 5)
                .transition(.move(edge: .trailing))
                // .Animation(.default)
                Spacer()
            }
        }
        .padding(.bottom, 720) //distancia da barra de pesquisa
    }
}

struct TelaPesquisa_Previews: PreviewProvider {
    static var previews: some View {
        TelaPesquisa(text: .constant(""))
    }
}
