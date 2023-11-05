//
//  SearchBar.swift
//  AppPrecoFacil
//
//  Created by user on 17/10/23.
//

import SwiftUI

struct SearchBar: View {
    
    @Binding var text: String
    @State private var isEditing = false
    
    var body: some View {
        HStack {
            TextField("Pesquisar...", text: $text)
                .padding(.bottom, 20)
                .padding(.horizontal, 20)
                .background(Color(.systemGray6))
                .cornerRadius(15)
                .padding(.horizontal, 15)
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
                .padding(.trailing, 15)
                .transition(.move(edge: .trailing))
                //.Animation(.default)
            }
        }
        .padding(.bottom, 750)
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant(""))
    }
}
