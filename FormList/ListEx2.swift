//
//  ListEx2.swift
//  FormList
//
//  Created by Macbook Air on 5.05.2021.
//

import SwiftUI

struct ListEx2: View {
    var displayedData = ["Gruplama Özelliği","Basit bir liste oluşturalım","helstar","megadeth","Kick the chair","Eğer content çok büyük olursa da o satır otomatik olarak onu sarrmalayacak şekilde büyür."]
    var body: some View {
        VStack(spacing:20){
            List(displayedData,id: \.self){strData in
                Text(strData)
                
            }
            List(displayedData,id:\.self){strData in
                Text(strData).font(strData == "Gruplama Özelliği" ? .largeTitle : .body)
                Spacer()
                Image(systemName: strData == "helstar" ? "circle.fill" : "circle")
            }.listStyle(GroupedListStyle())
           
        }
    }
}

struct ListEx2_Previews: PreviewProvider {
    static var previews: some View {
        ListEx2()
    }
}
