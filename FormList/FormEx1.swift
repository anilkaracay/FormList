//
//  FormEx1.swift
//  FormList
//
//  Created by Macbook Air on 4.05.2021.
//

import SwiftUI

struct FormEx1: View {
    var body: some View {
        Form{
            Section{
                Text("BU BİR FORM!").foregroundColor(.red).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text("Buraya istediğiniz içeriği ekleyebilirisniz.")
                Text("Formdaki hücreler içeriğin boyutuna en uygun şekilde kapsayacak biçimde boyurlarını ayarlar. Her zaman sağa ve sola tamamen büyümez.")
                Text("Bunların basitçe bir view içinde view olduğunu unutmayın")
            }
            Section{
                Text("SINIRLAMALAR").foregroundColor(.red).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text("Oluşturulan hücrelerein etrafında boşluklar oluşur. Bunu görmek için alttaki alana bakın.")
                Color.pink
            }
        }
    }
}

struct FormEx1_Previews: PreviewProvider {
    static var previews: some View {
        FormEx1()
    }
}
