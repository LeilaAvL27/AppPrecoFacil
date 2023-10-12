
//  ContentView.swift// Tela de Login
//  AppPrecoFacil
//
//  Created by user on 19/09/23

import SwiftUI

struct ContentView: View {
    
    @State var email: String = ""
    @State var senha: String = ""
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                Color.white // cor de fundo da Tela
                
                Rectangle()
                    .scale(1.7)
                    .foregroundColor(.orange)
                    .frame(width: 600, height: 350) //largura, altura
                    .padding(.bottom, 900)
                
                Text("LOGO")
                    .font(.largeTitle)
                    .bold()
                    .padding(.bottom, 600)
                    .foregroundColor(.yellow)
                
                Text ("FAÇA SEU LOGIN")
                    .font(.body)
                    .bold()
                    .padding(.bottom, 250)
                    .foregroundColor(.black)
                
                VStack {
                    TextField("Insira seu email", text: $email)
                        .padding()
                        .frame(width: 300, height: 50) //Largura, altura
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(30)
                        .border(.gray.opacity(0.05))
                        .padding(.top, 150)
                        .padding(.bottom, 10)
                    
                    SecureField("Insira sua senha", text: $senha)
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
                    //     NavigationLink(destination: ???()) {
                    Text ("Esqueceu a senha?") //Deixar mais próximo do botão de ENTRAR
                        .font(.callout)
                        .foregroundColor(.blue)
                    
                    
                        .padding()
                    NavigationLink(destination: Tela_Cadastro()) {
                        Text ("Cadastre-se") // Deixar do lado de ESQUECEU SENHA
                            .font(.callout)
                            .foregroundColor(.black)
                        
                        
                    }
                }
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
