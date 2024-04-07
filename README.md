klasör ismi chess ama başka bir app yaptım flutter öğrenmek için, temel widgetleri öğrendim. alıntıların kartlar şeklinde listelendiği ve gerçek zamanlı şekilde silinebildiği bir uygulama yaptım işte.

Scaffold
-> temelde bu kullanılıyor, AppBar ve Body parametreleri var.
-->AppBar ise title alıyor ve üstteki bar içerisinde bulunuyor. title: Text('İstatistikler') şeklinde kullanılabilir. ek olarak centeredTitle isminde bool tipinde değer alabilen bir özelliği de var.
-->Body ise appbarın altında kalan her şeyi temsil ediyor.

temel widgetler
Elevated/icon Button ontapped'da fonksiyonu, child: içerisinde yazısı veya ikonu
Text-> string türünü ekrana yazdırıyoruz
Row/Column-> birden fazla widged içeren widgedler, AlignMainAxis ve AlignCrossAxis gibi iki tane align özelliği var. Children içerisinde widgetleri listeleyebiliyorsun.

SetState( ****
  flutter'da her şey kökten inşaa edilir. eğer ki bir veriniz değişirse bu verinin bulunduğu dizin tekrar inşaa edilmelidir aksi taktirde veri değişse bile ekrana yansımaz.
  set state içerisinde değişen veriler(int veya listeden bir eleman silinmesi, eklenemsi) o dizinin bulunduğu dizini tekrar inşaa eder.
)


Kullanışlığı keşfettiğim widgetler
draggable-> üzerine basıp sürükleyebildiğimiz bir etiket, üç parametresi var. sürüklerken aktifleşen widget, arkasında bıraktığı widget ve hedefte iken ne olacağına dair bir widget.
