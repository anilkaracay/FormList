//
//  FormEx5.swift
//  FormList
//
//  Created by Macbook Air on 4.05.2021.
//

import SwiftUI

struct FormEx5: View {
    var body: some View {
        Form{
            Section(header:Text("Form Örnek-5").font(.largeTitle)){
                Text("list row Inset").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text("Bu rengi kullanarak, varsayılan boşlukların nereden olduğunu görebilirsiniz.")
                Color.pink
                Text("List Row inset ile bu boşlukları düzenleyebilirsiniz.").lineLimit(1).layoutPriority(2)
                Color.blue.listRowInsets(.init(top:0,leading:0,bottom:0,trailing:0))
                
                
            }
            Section(header:Text("Row Inset Kullanımı").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)){
                Text("Daha fazla içeriye boşluk vermek isteyebiliriz.")
                Text("Boşluk Seviye1").listRowInsets(.init(top:0,leading:40,bottom:0,trailing:0))
                Text("Boşluk Seviye2").listRowInsets(.init(top:0,leading:80,bottom:0,trailing:0))
                Text("Dikey hizalamada da kullanabilirsiniz.")
                Text("Üstte görünsün").listRowInsets(.init(top:-20,leading:40,bottom:0,trailing:0))
                Text("Alta itelim").listRowInsets(.init(top:0,leading:40,bottom:-20,trailing:0))
            }
        }
    }
}

struct FormEx5_Previews: PreviewProvider {
    static var previews: some View {
        FormEx5()
    }
}
