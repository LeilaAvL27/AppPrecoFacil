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
        NavigationStack{
            
            ZStack {
                Color.white // COR FUNDO TELA
                
                // DEFINICOES PARTE SUPERIOR
                Rectangle()
                    .scale(1.7)
                    .foregroundColor(.orange)
                    .frame(width: 600, height: 300) //largura, altura
                    .padding(.bottom, 900)
                
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white)
                    .frame(width: 70, height: 70)
                    .padding(.bottom, 540)
                
                // DEFINICOES IMAGENS
                VStack {
                    Image("LogoPreco")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 200, height: 150)
                        .clipShape(Circle())
                        .padding(.bottom, 750)
                }
                
                VStack {
                    Image("LogoLupa")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 95, height: 95)
                        .clipShape(Circle())
                        .padding(.bottom, 540) // Ajuste o espaçamento conforme necessário
                }
                
                Text ("FAÇA SEU CADASTRO")
                    .font(.title2)
                    .bold()
                    .padding(.bottom, 320)
                    .foregroundColor(.black)
                
                VStack {
                    TextField("Crie um nome de usuário", text: $usuario)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(30)
                        .border(.gray.opacity(0.05))
                        .padding(.top, 200)
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
                        .padding(.bottom, 10)
                    
                    SecureField("Confirme sua senha", text: $senha)
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
                    
                    .padding()
                    Text("OU")
                        .font(.callout)
                        .foregroundColor(.black)
                    
                    // BOTÃO GOOGLE
                    Button{
                      //  vm.signInWithGoogle()
                    } label: {
                        Text("Entre com o Google")
                            .padding(.trailing)
                            .foregroundColor(.white)
                            .frame(width: 240, height: 50)
                            .background(.blue.opacity(0.85))
                            .cornerRadius(10)
                            .overlay(
                                HStack{
                                    Spacer()
                                    Image("google")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 30, height: 30)
                                        .clipShape(Circle())
                                        .foregroundColor(.white)
                                        .font(.title2)
                                        .padding(.horizontal, 0)
                                        .padding(.trailing)
                                }
                            )
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

