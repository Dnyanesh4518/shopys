import 'package:flutter/material.dart';

class KitchenBestseller extends StatefulWidget {
  const KitchenBestseller({super.key});

  @override
  State<KitchenBestseller> createState() => _KitchenBestsellerState();
}

class _KitchenBestsellerState extends State<KitchenBestseller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 30,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("Kitchen Bestsellers",style: TextStyle(color: Colors.black),),
        actions: const [
          Padding(
            padding:  EdgeInsets.only(left:5.0,right: 10.0),
            child: Icon(Icons.favorite_border_outlined,color:Colors.black,size: 25,),
          ),
          Padding(
            padding:  EdgeInsets.only(left:5.0,right: 10.0),
            child: Icon(Icons.search_rounded,color:Colors.black,size: 25,),
          ),
          Padding(
            padding:  EdgeInsets.only(left:5.0,right: 20.0),
            child: Icon(Icons.shopping_cart_outlined,color:Colors.black,size: 25,),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    flex: 2,
                    child: CustomImageCard("https://m.media-amazon.com/images/I/61hNleaEjFL._AC_UF1000,1000_QL80_.jpg","HOME And Kitchenwear","405","59")),
                Expanded(
                    flex: 2,
                    child: CustomImageCard("https://m.media-amazon.com/images/I/71kxf2j3cwL.jpg","Dish Drying Rack","129","35")),
              ],
            ),
            Row(
              children: [
                Expanded(
                    flex: 2,
                    child: CustomImageCard("https://m.media-amazon.com/images/I/71zUQcRTAAL.jpg","Plastic Airtight Container Set","32","92")),
                Expanded(
                    flex: 2,
                    child: CustomImageCard("https://m.media-amazon.com/images/I/716UNaXFiqL._AC_UF1000,1000_QL80_.jpg","Plastic Leakproof Bottel Set","49","90")),
              ],
            ),
            Row(
              children: [
                Expanded(
                    flex: 2,
                    child: CustomImageCard("https://m.media-amazon.com/images/I/71OJM-Szc+S._AC_UF1000,1000_QL80_.jpg","Steel Leakproof Bottel Set","1898","57")),
                Expanded(
                    flex: 2,
                    child: CustomImageCard("https://rukminim2.flixcart.com/image/850/1000/ktvucnk0/mixer-grinder-juicer/z/m/k/powerful-300w-mixer-grinder-blender-juicer-and-smoothie-maker-original-imag73zbggjz3zrd.jpeg?q=90","Bajaj Mixer Grinder","2550","30")),
              ],
            ),
            Row(
              children: [
                Expanded(
                    flex: 2,
                    child: CustomImageCard("https://rukminim1.flixcart.com/image/300/300/xif0q/electric-cooker/7/o/a/-original-imaggjfmk3eg68kk.jpeg","Electric Pressure Cooker","1410","58")),
                Expanded(
                    flex: 2,
                    child: CustomImageCard("https://cdn.shopify.com/s/files/1/0170/6403/4358/products/HKNIFE-n.jpg?v=1655474487","Kitchen Knives Set","344","25")),
              ],
            )
          ],
        ),
      ),
    );
  }
  Widget CustomImageCard(String imgId,String Name,String Discountedprice,String Discount)
  {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black,width: 0.1)
              ),
              height: 190,
              child: Image(image: NetworkImage(imgId),)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(Name,style: TextStyle(color: Colors.blueGrey),)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("₹$Discountedprice",style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(width: 10,),
              Text("$Discount% off",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),)
            ],
          ),
        )
      ],
    );
  }
}
