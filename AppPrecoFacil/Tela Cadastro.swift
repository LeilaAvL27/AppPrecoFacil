//
//  Tela Cadastro.swift
//  AppPrecoFacil
//
//  Created by user on 30/09/23.
//

import SwiftUI

struct Tela_Cadastro: View {
    
    @State var email: String = "";
    @State var confirmemail: String = "";
    @State var senha: String = "";
    @State var confirmesenha: String = "";
    
    var body: some View {
        ZStack {
            Color.white // cor de fundo da Tela
            
            Circle() // substituir por um quadrado como o do Figma
                .scale(1.7)
                .foregroundColor(.orange)
                .frame(width: 600, height: 400) //largura, altura
                .padding(.bottom, 900)
            
            Text("PREÇO FÁCIL")
                .font(.largeTitle)
                .bold()
                .padding(.bottom, 600)
                .foregroundColor(.yellow)
            
            Text ("FAÇA SEU CADASTRO")
                .font(.body)
                .bold()
                .padding(.bottom, 200)
                .foregroundColor(.black)
            
            VStack {
                TextField("Insira seu usuário", text: $email)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(10)
                    .border(.gray.opacity(0.05))
                    .padding(.top, 100)
                    .padding(.bottom, 10)
                
                TextField("Confirme seu email", text: $email)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(10)
                    .border(.gray.opacity(0.05))
                    .padding(.top, 100)
                    .padding(.bottom, 10)
                
                SecureField("Crie uma senha", text: $senha)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(10)
                    .border(.gray.opacity(0.05))
                    .padding(.bottom, 20)
                
                SecureField("Confirme sua senha", text: $senha)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(10)
                    .border(.gray.opacity(0.05))
                    .padding(.bottom, 20)
                
                
                Button("Finalizar") {
                    //Realiza alguma ação
                }
                .foregroundColor(.red)
                .frame(width: 300, height: 50)
                .background(.black.opacity(0.85))
                .cornerRadius(10)
                
            
            }
        }
    }
    
    struct Tela_Cadastro_Previews: PreviewProvider {
        static var previews: some View {
            Tela_Cadastro()
        }
    }
}
