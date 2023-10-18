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
                .padding(7)
                .padding(.horizontal, 25)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal, 10)
                .onTapGesture {
                    self.isEditing = true
                }
            
            if isEditing {
                Button(action: {
                    self.isEditing = false
                    self.text = ""
                    
                }) {
                    Text("Cancel")
                }
                .padding(.trailing, 10)
                .transition(.move(edge: .trailing))
                // .Animation(.default)
                Spacer()
            }
        }
    }
}

struct TelaPesquisa_Previews: PreviewProvider {
    static var previews: some View {
        TelaPesquisa(text: .constant(""))
    }
}
