
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
                    .padding(.bottom, 890)
                //Circle()
                  //  .scale(1.7)
                    //.foregroundColor(.white)
                   // .frame(width: 70, height: 70)
                   // .padding(.bottom, 500)
                VStack {
                    Image("LogoPreco")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 220, height: 160)
                        .clipShape(Circle())
                        .padding(.bottom, 720)
                }
                VStack {
                    Image("LogoLupa")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 130, height: 130)
                        .clipShape(Circle())
                        .padding(.bottom, 500) // Ajuste o espaçamento conforme necessário
                }
                
                // DEFINICOES PARTE INFERIOR
                Text ("FAÇA SEU LOGIN")
                    .font(.title2)
                    .bold()
                    .padding(.bottom, 240)
                    .foregroundColor(.black)
                
                VStack {
                    TextField("Insira seu email ou usuario", text: $email)
                        .padding()
                        .frame(width: 320, height: 50) // largura, altura
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(22)
                        .border(.gray.opacity(0.05))
                        .padding(.top, 200)
                        .padding(.bottom, 0)
                    
                    ZStack{
                        SecureField("Insira sua senha", text: $senha)
                            .padding()
                            .frame(width: 320, height: 50)
                            .background(Color.gray.opacity(0.3))
                            .cornerRadius(22)
                            .border(.gray.opacity(0.05))
                            .padding(.bottom)
                        
                        //BOTAO ESQUECEU A SENHA
                        Text("Esqueceu a senha?")
                            .font(.callout)
                            .foregroundColor(.blue)
                            .padding(.leading, 120)
                            .padding(.top, 80)
                    }
                    
                    NavigationLink(destination: TabBar()) {
                        Text("Entrar")
                            .foregroundColor(.white)
                            .frame(width: 200, height: 50)
                            .background(.black.opacity(0.85))
                            .cornerRadius(10)
                            .padding(.top, 10)
                    }
                            
                    //BOTAO CADASTRE-SE
                    NavigationLink("Não tem uma conta? Cadastre-se", destination: Tela_Cadastro())
                        .padding(.top, 30)
                    
                    
                        .padding()
                    HStack{
                        Image(systemName:"rectangle.portrait.and.arrow.forward")
                        NavigationLink("Acessar como Visitante", destination: TelaHome())
                            .foregroundColor(.black)
                            .bold()
                            
                    }
                    
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
