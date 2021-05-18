//
//  FormEx4.swift
//  FormList
//
//  Created by Macbook Air on 4.05.2021.
//

import SwiftUI

struct FormEx4: View {
    var body: some View {
        Form{
            Section(header: Text("Form Örnek 4").bold().font(.largeTitle)){
                Text("List Row Background").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.gray)
                Text("Burada da görebileceğiniz gibi görüntüler biraz farklı duruyor.")
                Text("Görüntü aslında birazdan 2.sectiona uygulanacak.")
            }
            Section(header:Text("Görüntüler").font(.largeTitle).bold()){
                Text("Alltaki satırda olduğu gibi eğer arkaplanı satıra uygularsanız daha güzel görünebiliR VE yani arkaplan ataması tek bir satıra uygulan ınca iyi görünebilir ama eğer bunu bir sectiona uygularsanız o arka plan görüntüsünü tüm satırlara ayrı ayrı uygular. Amacınıza uygun olanını seçin.")
                Text("Arkaplan görüntüsü sadece bu satıra uygulandı ama arka plan görüntüsü sınırlarını aştı ve tüm her yere yayıldı. Ayrıca altındaki hiçbir satır arkaplanın arkasında kalacağı için görünmeyecek artık.").foregroundColor(.white).blur(radius: 0.8).listRowBackground(Image("raze"))
            }
        }
    }
}

struct FormEx4_Previews: PreviewProvider {
    static var previews: some View {
        FormEx4()
    }
}
