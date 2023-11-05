
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
                Color.white
                // DEFINICOES PARTE SUPERIOR
                Rectangle()
                    .scale(1.7)
                    .foregroundColor(.orange)
                    .frame(width: 600, height: 350) //largura, altura
                    .padding(.bottom, 900)
                
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white)
                    .frame(width: 70, height: 70)
                    .padding(.bottom, 500)
                
                VStack {
                    Image("LogoPreco")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 200, height: 150)
                        .clipShape(Circle())
                        .padding(.bottom, 710)
                }
                
                VStack {
                    Image("LogoLupa")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 97, height: 97)
                        .clipShape(Circle())
                        .padding(.bottom, 500) // Ajuste o espaçamento conforme necessário
                }
                
                
                // DEFINICOES PARTE INFERIOR
                Text ("FAÇA SEU LOGIN")
                    .font(.body)
                    .bold()
                    .padding(.bottom, 250)
                    .foregroundColor(.black)
                
                VStack {
                    TextField("Insira seu email ou usuario", text: $email)
                        .padding()
                        .frame(width: 300, height: 50) // largura, altura
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
                    
                    NavigationLink(destination: TabBar()) {
                        Text("Entrar")
                            .foregroundColor(.white)
                            .frame(width: 200, height: 50)
                            .background(.black.opacity(0.85))
                            .cornerRadius(10)
                    }
                    
                    //BOTAO ESQUECEU A SENHA
                    .padding()
                    Text("Esqueceu a senha?")
                        .font(.callout)
                        .foregroundColor(.blue)
                
                    //BOTAO CADASTRE-SE
                    NavigationLink("Cadastre-se", destination: Tela_Cadastro())
                    
                    .padding()
                    Text("OU")
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
