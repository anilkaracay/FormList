//
//  NavigationView1.swift
//  FormList
//
//  Created by Macbook Air on 6.05.2021.
//

import SwiftUI

struct NavigationView1: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color.pink
                VStack(spacing:25){
                    Image(systemName: "globe").font(.largeTitle)
                    Text("Giriş Örnek").foregroundColor(.gray)
                    Text("Navigation Viewda bar alanında navigatioanBarTitle metoduyla bir başlık eklemedeğiniz sürece boş görünecek.").frame(maxWidth:.infinity).padding().background(Color.blue
                    )
                    Spacer()
                    
                }.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.white)

            }.navigationBarTitle(Text("Navigation Viewlar"),displayMode: .inline).edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct NavigationView1_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView1()
    }
}
