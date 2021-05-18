//
//  NavigationView2.swift
//  FormList
//
//  Created by Macbook Air on 6.05.2021.
//

import SwiftUI

struct NavigationView2: View {
    @State private var hiden = false
    var body: some View {
        NavigationView{
            ZStack{
                Color.orange
                VStack(spacing:25){
                    Image(systemName: "globe").font(.largeTitle)
                    Text("Navigation View Örnek 2").font(.largeTitle)
                    Text("Navigation Bar Gizleme/Gösterme").foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    Image("raze").resizable().frame(width:50,height: 50)
                    Text("Navigation Barın görünmesini istemiyorsanız onu navigationBarHidden fonksiyonuyla gizleyebilirsiniz.")
                    Toggle("Nav Bar Gizle", isOn: $hiden).padding()
                    Spacer()
                }.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.white).padding(.top,70)
            }.edgesIgnoringSafeArea(.bottom).navigationBarHidden(hiden).navigationBarTitle(Text("Navigation View 2.Örnek"),displayMode: .inline)
            .navigationBarItems(leading: Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "bell.fill").foregroundColor(.purple)
            }), trailing: Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Ekle").accentColor(.purple)
            }))
        }
    }
}

struct NavigationView2_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView2()
    }
}
