//
//  InfoTela.swift
//  AppPrecoFacil
//
//  Created by user on 04/11/23.
//

import SwiftUI

struct InfoTela: View {
    
    @State var usuario: String = "";
    @State var email: String = "";
    
    var body: some View {
            NavigationStack {
                ZStack{
                    // BACKGROUND PROFILE
                    Rectangle()
                        .ignoresSafeArea()
                        .foregroundColor(.orange)
                        .frame( height: 150)
                    
                        ZStack{
                            Circle()
                                .frame(width: 100, height: 100)
                                .foregroundColor(.white)
                                .padding(.bottom, 21)
                            Image("profileFoto")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 90, height: 90)
                                .clipShape(Circle())
                                .padding(.bottom, 20) // Ajuste o espaçamento conforme necessário
                            
                            NavigationLink("Alterar Foto", destination: InfoTela())
                                .font(.callout)
                                .foregroundColor(.blue)
                                .fontWeight(.bold)
                                .padding(.top, 110)
                        }
                }
                List {
                    NavigationLink("João Paulo", destination: InfoTela())
                        .font(.title3)
                        .foregroundColor(.blue)
                        .fontWeight(.bold)
                       
                    NavigationLink("joaopaulo@gmail.com", destination: InfoTela())
                        .font(.title3)
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                    
                    NavigationLink("Trocar senha", destination: InfoTela())
                        .font(.title3)
                        .foregroundColor(.blue)
                        .fontWeight(.bold)
                }
                
            }
        }
    }

struct InfoTela_Previews: PreviewProvider {
    static var previews: some View {
        InfoTela()
    }
}
