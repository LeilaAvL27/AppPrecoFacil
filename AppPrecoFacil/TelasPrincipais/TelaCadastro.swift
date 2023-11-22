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
    
    var body: some View {
        NavigationStack{
            
            ZStack {
                Color.white // COR FUNDO TELA
                
                // DEFINICOES PARTE SUPERIOR
                Rectangle()
                    .scale(1.7)
                    .foregroundColor(.orange)
                    .frame(width: 600, height: 320) //largura, altura
                    .padding(.bottom, 900)
                
                //Circle()
                 //   .scale(1.7)
                   // .foregroundColor(.white)
                   // .frame(width: 70, height: 70)
                   // .padding(.bottom, 520)
                
                // DEFINICOES IMAGENS
                VStack {
                    Image("LogoPreco")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 220, height: 160)
                        .clipShape(Circle())
                        .padding(.bottom, 750)
                }
                
                VStack {
                    Image("LogoLupa")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 130, height: 130)
                        .clipShape(Circle())
                        .padding(.bottom, 520) // Ajuste o espaçamento conforme necessário
                }
                
                Text ("FAÇA SEU CADASTRO")
                    .font(.title2)
                    .bold()
                    .padding(.bottom, 300)
                    .foregroundColor(.black)
                
                VStack {
                    TextField("Crie um nome de usuário", text: $usuario)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(30)
                        .border(.gray.opacity(0.05))
                        .padding(.top, 140)
                        .padding(.bottom, 10)
                    
                    TextField("Insira seu email", text: $email)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(30)
                        .border(.gray.opacity(0.05))
                        .padding(.bottom, 10)
                    
                    SecureField("Crie uma senha", text: $senha)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(30)
                        .border(.gray.opacity(0.05))
                        .padding(.bottom, 30)
                    
                    NavigationLink(destination: TabBar()) {
                        Text("Cadastrar")
                            .foregroundColor(.white)
                            .frame(width: 200, height: 50)
                            .background(.black.opacity(0.85))
                            .cornerRadius(10)
                    }
                    .padding(.bottom,15)
                    HStack{
                        Button(action: {
                            // URL da página externa que você deseja abrir
                            if let url = URL(string: "https://mobbin.com/terms") {
                                // Abre a página externa usando o SafariView
                                UIApplication.shared.open(url)
                            }
                        }) {
                            Text("Termos de Uso")
                                .foregroundColor(.blue)
                                .underline(true, color: .blue)
                                .font(.callout)
                        }
                        
                        Text("e")
                        
                        Button(action: {
                            if let url = URL (string: "https://mobbin.com/privacy") {
                                UIApplication.shared.open(url)
                            }
                        }) {
                            Text("Política de Privacidade")
                                .foregroundColor(.blue)
                                .underline(true, color: .blue)
                                .font(.callout)
                        }
                    }
                    
                }
            }
        }
    }
}

struct Tela_Cadastro_Previews: PreviewProvider {
    static var previews: some View {
        Tela_Cadastro()
    }
}

