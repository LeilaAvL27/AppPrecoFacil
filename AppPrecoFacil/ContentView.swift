
//  ContentView.swift// Tela de Login
//  AppPrecoFacil
//
//  Created by user on 19/09/23

import SwiftUI

struct ContentView: View {
    
    @State var Usuario: String = ""
    @State var senha: String = ""
    
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
            
            Text ("FAÇA SEU LOGIN")
                .font(.body)
                .bold()
                .padding(.bottom, 200)
                .foregroundColor(.black)
            
            VStack {
                TextField("Digite seu usuário", text: $Usuario)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(10)
                    .border(.gray.opacity(0.05))
                    .padding(.top, 200)
                    .padding(.bottom, 10)
                
                SecureField("Digite sua senha", text: $senha)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(10)
                    .border(.gray.opacity(0.05))
                    .padding(.bottom, 20)
                
                Button("Entrar") {
                    //Realiza alguma ação
                }
                .foregroundColor(.white) //texto 
                .frame(width: 300, height: 50) //fundo
                .background(.black.opacity(0.85)) //cor fundo
                .cornerRadius(10) // bordas
                
                .padding()
                Text ("Esqueceu a senha?")
                    .font(.callout)
                    .foregroundColor(.blue)
                    
                .padding()
                //NavigationLink(destination: Tela_Cadastro())
                Text ("Não tem cadastro?")
                    .font(.callout)
                    .foregroundColor(.black)
                    //.padding(.top, 100)
              
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
