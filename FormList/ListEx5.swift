//
//  ListEx5.swift
//  FormList
//
//  Created by Macbook Air on 5.05.2021.
//

import SwiftUI

struct ListEx5: View {
    @State var datas = ["Silmek için sola sürükleyin","SwiftUI kodlamayı öğren","Market alışverişi","Yemek pişir","Dans kursunua kaydol","Sinema biletlerini al ","kask fiyatlarını araştır","Evi temizle","Arabayı tamir et"]
    var body: some View {
        NavigationView{
            List{
                
                ForEach(datas,id:\.self){data in
                    Text(data).font(.system(size: 25)).padding()
                    
                }.onMove(perform:moveLine)
            }.navigationBarTitle(Text("Yapılacaklar"))
            .navigationBarItems(trailing: EditButton())
        }.accentColor(.green)
    }
    func moveLine (where indexler : IndexSet, where
                    targetIndex: Int){
        if let first = indexler.first{
            datas.insert(datas.remove(at: first),at:targetIndex-1)
        }
    }
}

struct ListEx5_Previews: PreviewProvider {
    static var previews: some View {
        ListEx5()
    }
}
