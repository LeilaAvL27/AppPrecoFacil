//
//  TelaHome.swift
//  AppPrecoFacil
//
//  Created by user on 03/10/23.
//

import SwiftUI

struct TelaHome: View {
    var body: some View {
        
        NavigationStack{
                
                VStack {
                   Text("Home")
                        .font(.largeTitle)
                        .padding()
                    
                    
                   
                    NavigationLink("click", destination: TelaHome())
                    
                    
                }
            }
        }
    }

struct TelaHome_Previews: PreviewProvider {
    static var previews: some View {
        TelaHome()
    }
}
