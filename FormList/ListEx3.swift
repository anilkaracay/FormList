//
//  ListEx3.swift
//  FormList
//
//  Created by Macbook Air on 5.05.2021.
//

import SwiftUI

struct ListEx3: View {
    var writers = ["Özel Satırlar","Fyodor Dostoyevski","Orhan Pamuk","Lev Tolstoy" ,"Nikolay Gogol","Franz Kafka","Anton Çehov","Ahmet Hamdi Tanpınar"]
    var body: some View {
        List(writers, id : \.self){writer in
            PrivateLine(content: writer)
            
        }
    }
}

struct PrivateLine : View{
    var content: String
    var body: some View{
        HStack{
            Image(systemName: "person.circle.fill")
            Text(content)
            Spacer()
        }.foregroundColor(content == "Özel Satırlar" ? .green : .primary).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).padding([.top,.bottom],15)
    }
}

struct ListEx3_Previews: PreviewProvider {
    static var previews: some View {
        ListEx3()
    }
}
