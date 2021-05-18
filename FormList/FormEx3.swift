//
//  FormEx3.swift
//  FormList
//
//  Created by Macbook Air on 4.05.2021.
//

import SwiftUI

struct FormEx3: View {
    var body: some View {
        Form{
            Section(header:Text("Form").font(.largeTitle)){
                Text("List Row Background").foregroundColor(.gray)
                Text("Formlara ve Listelere \"listRowBackground\" fonksiyonu kullanarak arkaplanlara bir view ataması yapabilirsiniz.")
                Text("Bu fonksiyonu tek bir satır için çalıştırabilirsiniz.").listRowBackground(Color.black).foregroundColor(.white)
            }
            Section(header:Text("Tüm Sectiona Arka Plan").font(.largeTitle).foregroundColor(.red)){
                Text("Tüm Section arka planına bir view veya renk aktarabilirsiniz.")
                Image(systemName: "smiley.fill").frame(maxWidth:.infinity,alignment: .center).font(.largeTitle)
                Text("Section alanına uygulanan bir arka plan header alanını etkilemez.")
            }.listRowBackground(Color.green).foregroundColor(.white)
        }
    }
}

struct FormEx3_Previews: PreviewProvider {
    static var previews: some View {
        FormEx3()
    }
}
