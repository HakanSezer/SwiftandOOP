import UIKit


class DersNotlar {
    var ders: String?
    var not: Int?
    
    // Shadowing
    init(ders: String, not: Int) {
        self.ders = ders
        self.not = not
    }
}

// Dersler
// Bunlar Classlardan sonra oluşturulan yazılardır. 
var dn1 = DersNotlar(ders: "Tarih", not: 10)
var dn2 = DersNotlar(ders: "Fizik", not: 80)
var dn3 = DersNotlar(ders: "Matematik", not: 100)
var dn4 = DersNotlar(ders: "Kimya", not: 50)
var dn5 = DersNotlar(ders: "Biyoloji", not: 40)

// Boş bir Arry yaratarak içerisine element koymuş oluyoruz.
var dersNotlarıListesi = [DersNotlar]()
print(dersNotlarıListesi)

dersNotlarıListesi.append(dn1)
dersNotlarıListesi.append(dn2)
dersNotlarıListesi.append(dn3)
dersNotlarıListesi.append(dn4)
dersNotlarıListesi.append(dn5)

var toplam = 0
for dn in dersNotlarıListesi {
    print("\(dn.ders!) : \(dn.not!)")
    toplam = toplam + dn.not!
}

let ortalama = toplam / dersNotlarıListesi.count

if ortalama >= 50  {
    print("Geçti")
}else {
    print("Kaldı.")
}
