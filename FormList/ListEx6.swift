//
//  ListEx6.swift
//  FormList
//
//  Created by Macbook Air on 5.05.2021.
//

import SwiftUI

struct Do:Identifiable{
    let id = UUID()
    var toDo = ""
    var date = ""
    var girintili = false
}

struct ListEx6: View {
    @State private var addedJobName = ""
    @State var datas = [
        Do(toDo: "Kodlama Yap", date: "Bugün"),
        Do(toDo: "Evi Temizle", date: "Bugün"),
        Do(toDo: "Spora git", date: "Yarın"),
        Do(toDo: "Havuza Kaydol", date: "Gelecek hafta"),
        Do(toDo: "Tatil Araştır", date: "Gelecek Hafta"),
        Do(toDo: "Ödevi Yap", date: "2 Hafta Sonra"),
        Do(toDo: "Bulaşıkları yıka", date: "Yarın"),
        Do(toDo: "Bakıma git", date: "Bugün",girintili: true)
        
    ]
    
    var body: some View {
        List{
            Section(header:VStack{
                Text("Yapılacaklar").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                HStack{
                    TextField("Yeni Aktivite Ekle", text:$addedJobName).textFieldStyle(RoundedBorderTextFieldStyle())
                    Button(action: {
                            self.datas.append(Do(toDo:
                            self.addedJobName))
                        self.addedJobName = ""
                        
                    }, label: {
                        Image(systemName: "plus")
                    })
                }
            }.padding(EdgeInsets(top: 50, leading: 16, bottom: 16, trailing: 16))
            ){
                ForEach(datas){data in
                    Text(data.toDo).font(.system(size: 24)).foregroundColor(self.getColor(date: data.date)).listRowBackground(data.date == "Bugün" ? Color.green : Color.clear).padding().listRowInsets(.init(top:0,leading:data.girintili ? 60 : 20,bottom:0,trailing:0))
                    
                }
                
            }
        }
    }
    func getColor(date:String) -> Color {
        date == "Bugün" ? .red : .primary
    }
    
}

struct ListEx6_Previews: PreviewProvider {
    static var previews: some View {
        ListEx6()
    }
}
