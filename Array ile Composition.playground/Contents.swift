import UIKit

class Adres {
    var il: String?
    var ilce: String?
    
    init(il: String, ilce: String) {
        self.il = il
        self.ilce = ilce
    }
}


class Personel {
    var personelNo: Int?
    var personelIsim: String?
    var personelAdres: Adres?
    
    init(personelNo: Int, personelIsim: String, personelAdres: Adres) {
        self.personelNo = personelNo
        self.personelIsim = personelIsim
        self.personelAdres = personelAdres
    }
}


var adres1 = Adres(il: "Bursa", ilce: "Osmangazi")
var adres2 = Adres(il: "İstanbul", ilce: "SultanBeyli")
var adres3 = Adres(il: "Tekirdağ", ilce: "Merkez")
var adres4 = Adres(il: "Ankara", ilce: "Kızılay")

var personel1 = Personel(personelNo: 110, personelIsim: "Hakan", personelAdres: adres1)
var personel2 = Personel(personelNo: 100, personelIsim: "Mehmet", personelAdres: adres2)
var personel3 = Personel(personelNo: 90, personelIsim: "Zeynep", personelAdres: adres3)
var personel4 = Personel(personelNo: 80, personelIsim: "Ece", personelAdres: adres4)

var personelListesi = [Personel]()

personelListesi.append(personel1)
personelListesi.append(personel2)
personelListesi.append(personel3)
personelListesi.append(personel4)


for per in personelListesi {
    print("*************")
    print("Personel No: \(per.personelNo!)")
    print("Personel İsim: \(per.personelIsim!)")
    print("Personel Adres")
    print("Personel İl: \(per.personelAdres!.il!)")
    print("Personel İlçe: \(per.personelAdres!.ilce!)")
}
