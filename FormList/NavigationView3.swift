//
//  NavigationView3.swift
//  FormList
//
//  Created by Macbook Air on 6.05.2021.
//

import SwiftUI

struct NavigationView3: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color.gray
                VStack(spacing:25){
                    Image(systemName: "globe").font(.largeTitle)
                    Text("Navigationview").font(.largeTitle)
                    Text("Geri butonu gizleme")
                    Image("raze").resizable().frame(width:100,height: 100)
                    NavigationLink("Detaylara git",destination:BackButtonDetail())
                    Spacer()
                }.font(.title).padding(.top,70).foregroundColor(.white)
                
            }.edgesIgnoringSafeArea(.bottom).navigationBarTitle(Text("NavigationView"))
        }
    }
}

struct BackButtonDetail : View{
    @Environment(\.presentationMode) var presentationMode
    var body : some View{
        ZStack{
            Color.black
            VStack(spacing:25){
                Image(systemName: "globe").font(.largeTitle)
                Text("Geri Butonu Gizli").foregroundColor(.gray)
                Image("raze").resizable().frame(width:100,height: 100)
                Text("Buradaki navbarın geri butonu yok çünkü onu gizledik").frame(maxWidth:.infinity).padding().background(Color.blue).foregroundColor(.white)
                Button("Geri Git"){
                    self.presentationMode.wrappedValue.dismiss()
                }
                Spacer()

                
            }.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).padding(.top,50)
        }.navigationBarTitle(Text("Detaylar View"),displayMode: .inline).edgesIgnoringSafeArea(.bottom).navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: Button(action: {self.presentationMode.wrappedValue.dismiss()}, label: {
            HStack{
                Image(systemName: "arrow.left.circle")
                Text("Geri Git")
            }
        }))
    }
}

struct NavigationView3_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView3()
    }
}
