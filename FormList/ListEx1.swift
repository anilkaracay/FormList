//
//  ListEx1.swift
//  FormList
//
//  Created by Macbook Air on 5.05.2021.
//

import SwiftUI

struct ListEx1: View {
    var body: some View {
        VStack(spacing:20){
            Text("List").font(.largeTitle)
            Text("Static Data").foregroundColor(.gray)
            Text("List View ile istediğiniz kadar statik view veya veri gösterebilirsiniz.Ekleyebileceğiniz verinin bir sınırı yok. Ekrana sığmasa bile Scroll özelliğiyle geri kalanını görebilirsiniz.").frame(maxWidth:.infinity).padding().background(Color.orange).foregroundColor(.white)
            List{
                Text("1.satır")
                Text("2.satır")
                Text("3.satır")
                Image("raze").resizable().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment:.leading)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Buraya tıkla").foregroundColor(.orange)
                })
                HStack{
                    Spacer()
                    Text("Merkezde görünecek").bold()
                    Spacer()
                }


            }
        }.font(.title)
    }
}

struct ListEx1_Previews: PreviewProvider {
    static var previews: some View {
        ListEx1()
    }
}
