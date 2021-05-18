//
//  FormEx2.swift
//  FormList
//
//  Created by Macbook Air on 4.05.2021.
//

import SwiftUI

struct FormEx2: View {
    var body: some View {
        Form{
            Section(header: Text("Section Header Alanı")){
               Text("Section headerın içine sadece text değil istediğiniz viewleri ekleyebilirsiniz.")
                Text("Header alanı varsayılan halde fontu biraz küçük ve gri olarak oluşturulur.")
                
                
            }
            Section(header:IconTextSection(text: "Kişi Bilgileri", ımageName: "person.2.square.stack.fill")){
                Text("Bu örnekte header alanına metin ve görüntünün eklenebildiğini görebilirsiniz.")
                
            }
            Section(header:Text(""),footer:Text("Ödemeniz gereken miktar 2313213TL")){
                Text("Böylece Header ve Footer alanlarını ekleyebilrsiniz artık.")
            }
        }
    }
}
struct IconTextSection: View{
    var text:String
    var ımageName:String
    var body: some View{
        HStack{
            Image(systemName:ımageName).padding(.trailing)
            Text(text)
        }.padding().font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.purple)
    }
}

struct FormEx2_Previews: PreviewProvider {
    static var previews: some View {
        FormEx2()
    }
}
