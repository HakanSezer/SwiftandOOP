import UIKit

class Ogrenci {
    var no:Int?
    var ad:String?
    var sinif:String?
    
    init(no:Int, ad:String, sinif:String) {
        self.no = no
        self.ad = ad
        self.sinif = sinif
    }
}


var o1 = Ogrenci(no: 100, ad: "Hakan", sinif: "11-F")
var o2 = Ogrenci(no: 90, ad: "Zeynep", sinif: "10-F")
var o3 = Ogrenci(no: 110, ad: "Mahmut", sinif: "12-F")
var o4 = Ogrenci(no: 120, ad: "Simge", sinif: "11-C")
var o5 = Ogrenci(no: 130, ad: "Selen", sinif: "11-F")



var ogrenciListesi = [Int:Ogrenci]()


//o1 direk yüz olarak belirtebilriz fakat buna gerek yok çünkü öyle bir şey yaptığımızda biliyor gibi olacağız.
// Onu o1 olarak belirtiyoruz ve yanına no olarak gösteriyoruz.
ogrenciListesi[o1.no!] = o1
ogrenciListesi[o2.no!] = o2
ogrenciListesi[o3.no!] = o3
ogrenciListesi[o4.no!] = o4
ogrenciListesi[o5.no!] = o5


print(ogrenciListesi[100]!.ad!)


// Burada böyle beliriyoruz. çünkü dictionary kullandığımız içindir.
for (ogrenciNo,nesne) in ogrenciListesi {
    print("***************")
    print("Öğrenci No: \(ogrenciNo)")
    print("Öğrenci Ad: \(nesne.ad!)")
    print("Öğrenci Sınıf: \(nesne.sinif!)")
}
