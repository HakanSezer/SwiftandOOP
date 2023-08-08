import UIKit



class Ogrenci: Equatable, Hashable {
    var no: Int?
    var ad: String?
    var sinif: String?
    
    
    init(no: Int, ad: String, sinif: String) {
        self.no = no
        self.ad = ad
        self.sinif = sinif
    }
    
    // deprecated --- çalışıyor fakat artık kullanılmıyor demektir.
    // Bu hafızadaki kayıt yeriyle alakalıdır.
    var hashValue: Int {
        get {
            return no.hashValue
        }
    }
    
    static func == (lhs:Ogrenci,rhs:Ogrenci) -> Bool {
        
        //No'suna göre kıyaslama yap aynı no içerisindeki kişileri kayıt etme demiş olduk.
        return lhs.no == rhs.no
    }
}


var o1 = Ogrenci(no: 100, ad: "Mehmet", sinif: "11-F")
var o2 = Ogrenci(no: 90, ad: "Hakan", sinif: "11-F")
var o3 = Ogrenci(no: 50, ad: "Süleyman", sinif: "11-F")
var o4 = Ogrenci(no: 80, ad: "Ecem", sinif: "11-F")


//Boş Set yapısı
var ogrenciListesi = Set <Ogrenci>()


// Set'e veri kaydederken insert kullanıyoruz
ogrenciListesi.insert(o1)
ogrenciListesi.insert(o2)
ogrenciListesi.insert(o3)
ogrenciListesi.insert(o4)

for i in ogrenciListesi {
    print("-----------------------")
    print("Öğrenci No: \(i.no!)")
    print("Öğrenci Ad: \(i.ad!)")
    print("Öğrenci Sınıf: \(i.sinif!)")
}





//MARK: Hesaplama özelliği (Get - Set)

/*
 Bu yapı içerisindeki hesaplama özelliklerine Get and Set deriz.
 Closure yapısı içerisinde yer alır.
 
 Get --- veriyi alırız
 set ile veriyi yükleriz.
 
 Sınıfın var olan nesneleri kullanarak yapırız.
 İşlem sonucu yapmamız lazım.
 */
