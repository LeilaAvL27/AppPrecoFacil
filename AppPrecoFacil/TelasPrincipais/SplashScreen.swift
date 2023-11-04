//
//  SplashScreen.swift
//  AppPrecoFacil
//
//  Created by user on 04/11/23.
//

import SwiftUI

struct SplashScreen: View {
    @State private var isActive = false
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
            
            ZStack{
                Color.orange
                    .ignoresSafeArea()
                
                ZStack{
                    Image("LogoPreco")
                        .resizable()
                        .frame(width: 320, height: 300)
                        .padding(.bottom, 320)
                    
                    Image("LogoLupa")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 150, height: 150)
                        .clipShape(Circle())
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    self.isActive = true
                }
                
            }
        }
    }
}


struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
