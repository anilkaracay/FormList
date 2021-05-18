//
//  ListEx4.swift
//  FormList
//
//  Created by Macbook Air on 5.05.2021.
//

import SwiftUI

struct ListEx4: View {
    @State var datas = ["Silmek için sola sürükleyin","SwiftUI kodlamayı öğren","Market alışverişi","Yemek pişir","Dans kursunua kaydol","Sinema biletlerini al ","kask fiyatlarını araştır","Evi temizle","Arabayı tamir et"]
    var body: some View {
        List{
            Section(header: Text("Yapılacaklar listesi").padding()){
                ForEach(datas,id:\.self){data in
                    Text(data).font(.system(size: 24)).padding()
                    
                }.onDelete(perform: deleteData)
            }
        }
            
        }
    func deleteData(at indexler : IndexSet){
        if let first = indexler.first{
            datas.remove(at: first)
        }
    }
    }


struct ListEx4_Previews: PreviewProvider {
    static var previews: some View {
        ListEx4()
    }
}
