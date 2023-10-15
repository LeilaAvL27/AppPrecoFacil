//
//  MyList.swift
//  AppPrecoFacil
//
//  Created by user on 07/10/23.
//

import SwiftUI

struct MyList: View {
    var body: some View {
        
        
        NavigationStack{
            
            Text("Minha Lista")
            NavigationLink("Cabou aqui", destination: MyList())
            
            }
        }
    }


