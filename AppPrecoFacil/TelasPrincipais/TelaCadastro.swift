//
//  Tela Cadastro.swift
//  AppPrecoFacil
//
//  Created by user on 30/09/23.
//

import SwiftUI

struct Tela_Cadastro: View {
    
    @State var usuario: String = "";
    @State var email: String = "";
    @State var senha: String = "";
    @State var confirmesenha: String = "";
    
    var body: some View {
        ZStack {
            Color.white // cor de fundo da Tela
            
            Rectangle() // substituir por um quadrado como o do Figma
                .scale(1.7)
                .foregroundColor(.orange)
                .frame(width: 600, height: 300) //largura, altura
                .padding(.bottom, 900)
            
            Text("LOGO")
                .font(.largeTitle)
                .bold()
                .padding(.bottom, 600)
                .foregroundColor(.yellow)
            
            Text ("FAÇA SEU CADASTRO")
                .font(.body)
                .bold()
                .padding(.bottom, 320)
                .foregroundColor(.black)
            
            VStack {
                TextField("Nome de Usuário", text: $email)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(30)
                    .border(.gray.opacity(0.05))
                    .padding(.top, 150)
                    .padding(.bottom, 10)
                
                TextField("Insira seu email", text: $email)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(30) // grau do arredondamento da borda
                    .border(.gray.opacity(0.05))
                    .padding(.bottom, 10)
                
                SecureField("Crie uma senha", text: $senha)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(30)
                    .border(.gray.opacity(0.05))
                    .padding(.bottom, 10)
                
                SecureField("Confirme sua senha", text: $senha)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(30)
                    .border(.gray.opacity(0.05))
                    .padding(.bottom, 10)
                
                
                NavigationLink(destination: TelaHome()) {
                    VStack {
                        Text("Entrar")
                    }
                            .foregroundColor(.white)
                            .frame(width: 200, height: 50) //fundo
                            .background(.black.opacity(0.85)) //cor fundo
                            .cornerRadius(10)
                }
                
                .padding()
                Text("OU")
                    .font(.callout)
                    .foregroundColor(.black)
                
            
            }
        }
    }
    
    struct Tela_Cadastro_Previews: PreviewProvider {
        static var previews: some View {
            Tela_Cadastro()
        }
    }
}
