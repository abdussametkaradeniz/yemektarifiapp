import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Yemek_tarifi_detay extends StatefulWidget {
  const Yemek_tarifi_detay({Key? key}) : super(key: key);

  @override
  State<Yemek_tarifi_detay> createState() => _Yemek_tarifi_detay();
}

class _Yemek_tarifi_detay extends State<Yemek_tarifi_detay> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = (MediaQuery.of(context).size.width);
    var screenHeight = (MediaQuery.of(context).size.height);
    return Scaffold(
      appBar: AppBar(
        title: Text("Yemek Tarifi"),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //resim alanı
            Row(
              children: [
                Container(
                  width: screenWidth,
                  height: screenHeight / 3,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('images/makarna.jpeg')),
                  ),
                )
              ],
            ),
            //butonların alanı
            Row(
              children: [
                Container(
                  color: Colors.orange[400],
                  width: screenWidth / 2,
                  child: TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                      ),
                      onPressed: () {
                        print("beğenildi");
                      },
                      child: Text("Beğen")),
                ),
                Container(
                  color: Color.fromARGB(255, 255, 230, 0),
                  width: screenWidth / 2,
                  child: TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.red,
                      ),
                      onPressed: () {
                        print("beğenildi");
                      },
                      child: Text("Yorum Yap")),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: screenHeight / 100,
                    bottom: screenHeight / 100,
                    left: screenWidth / 100,
                    right: screenWidth / 100,
                  ),
                  child: Container(
                    child: Text(
                      "Sarımsaklı ekmek için öncelikle sarımsağın uç kısmını bıçak yardımı ile keselim.Ardından tezgahın üzerine aldığımız sar pişirin üzerine alalım ve zeytinyağı gezdirip tuz serpiştirerek sar pişirle her yerini kapatalım.Önceden 180°C ısıtılmış fırında yaklaşık 30 dakika pişirelim.Sürenin sonunda sarımsağı fırından alarak oda ısısına gelmesini sağlayalım.Oda sıcaklığına gelen sarımsağı elimizle bir kap içerisine sıkalım ve kabuklarından ayrılmasını sağlayalım.Üzerine tereyağını ekleyelim ve güzelce karıştıralım.Kaşar peyniri rendesi, beyaz peynir, kekik, pul biber ve ince kıyılmış maydanozu ekleyerek malzemeleri güzelce karıştıralım.Baget ekmeğimizi 4 parçaya bölelim ve pişirme kağıdı yerleştirdiğimiz fırın tepsisine dizelim.Hazırladığımız sarımsaklı harcı ekmeklerin tamamını kaplayacak şekilde sürelim.Önceden ısıttığımız 180°C fırında, üzerleri kızarıncaya kadar yaklaşık 15-20 dakika pişirelim.Sürenin sonunda kızaran sarımsaklı ekmeklerimiz servise hazır. Afiyet olsun!",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    width: screenWidth / 1.03,
                    decoration: BoxDecoration(color: Colors.amber),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
