//
//  ProfileInfoView.swift
//  AppPrecoFacil
//
//  Created by user on 08/11/23.
//

import SwiftUI

struct ProfileInfoView: View {
    
      @State private var username = "Joao Paulo"
      @State private var email = "JoaoPaulo@gmail.com"
      @State private var newPassword = ""
      @State private var profileImage: UIImage? = UIImage(named: "profileFoto")
      @State private var showImagePicker = false
    
    var body: some View {
            
        Form{
            VStack(alignment: .center){
                Image("profileFoto")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 90, height: 90)
                    .clipShape(Circle())
                    .padding(.horizontal, 120)
                Text("Alterar foto")
                    .font(.callout)
            }
            HStack{
                Image(systemName: "person")
                Text("Joao Paulo")
            }
            HStack{
                Image(systemName: "envelope")
                Text("JoaoPaulo@gmail.com")
            }
            HStack{
                Image(systemName: "key")
                Text("Alterar Senha")
            }
            Section{
                Text("Excluir Conta")
                    .foregroundColor(.red)
                    .padding(.horizontal, 120)
                
            }
        }
    }
}



struct ProfileInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileInfoView()
    }
}
