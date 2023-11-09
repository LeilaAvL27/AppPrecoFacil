//
//  ProfileView.swift
//  AppPrecoFacil
//
//  Created by user on 08/11/23.
//

import SwiftUI

struct ProfileView: View {

        @State private var usuario = ""
        @State private var senha = ""
        @State private var profileImage: UIImage? = nil
        @State private var showImagePicker = false
        
        var body: some View {
            VStack {
                Button(action: {
                    self.showImagePicker = true
                }) {
                    if let profileImage = profileImage {
                        Image(uiImage: profileImage)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 150, height: 150)
                            .clipShape(Circle())
                    } else {
                        Image(systemName: "person.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 150, height: 150)
                            .clipShape(Circle())
                    }
                }
                .sheet(isPresented: $showImagePicker) {
                    ImagePicker(image: self.$profileImage)
                }
                
                TextField("Nome de Usuário", text: $usuario)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                SecureField("Senha", text: $senha)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Button(action: {
                    // Implemente a lógica para salvar as alterações do perfil aqui
                    print("Nome de usuário: \(usuario)")
                    print("Senha: \(senha)")
                    if let profileImage = profileImage {
                        // Faça algo com a imagem de perfil (por exemplo, envie para o servidor)
                        print("Foto de Perfil: \(profileImage)")
                    }
                }) {
                    Text("Salvar Alterações")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding()
                
                Spacer()
            }
            .padding()
        }
    }

    struct ImagePicker: UIViewControllerRepresentable {
        @Binding var image: UIImage?

        class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
            var parent: ImagePicker

            init(parent: ImagePicker) {
                self.parent = parent
            }

            func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
                if let uiImage = info[.originalImage] as? UIImage {
                    parent.image = uiImage
                }

                picker.dismiss(animated: true)
            }
        }

        func makeCoordinator() -> Coordinator {
            return Coordinator(parent: self)
        }

        func makeUIViewController(context: Context) -> UIImagePickerController {
            let picker = UIImagePickerController()
            picker.delegate = context.coordinator
            return picker
        }

        func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {}
    }

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
