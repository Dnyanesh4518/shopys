import 'package:flutter/material.dart';

class BestOfAudio extends StatefulWidget {
  const BestOfAudio({super.key});

  @override
  State<BestOfAudio> createState() => _BestOfAudioState();
}

class _BestOfAudioState extends State<BestOfAudio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 30,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("Best Of Audio",style: TextStyle(color: Colors.black),),
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
                    child: CustomImageCard("https://www.boat-lifestyle.com/cdn/shop/products/Packaging1.3682_288x.png?v=1675751805","Boat Neckband","599","43")),
                Expanded(
                    flex: 2,
                    child: CustomImageCard("https://m.media-amazon.com/images/I/51fwPblxpVS.jpg","Noise wireless Earphone","699","53"))
              ],
            ),
            Row(
              children: [
                Expanded(
                    flex: 2,
                    child: CustomImageCard("https://5.imimg.com/data5/SELLER/Default/2022/9/JR/CF/BP/98343137/oneplus-nord-buds-ce-wireless-earbuds.jpg","OnePlus TWS","1249","70")),
                Expanded(
                    flex: 2,
                    child: CustomImageCard("https://cdn.telanganatoday.com/wp-content/uploads/2020/10/Realme-Buds-Wireless-Pro-Decent-neckband-earphone-with-ANC.jpg","Realme Neckband","899","38")),
              ],
            ),
            Row(
              children: [
                Expanded(
                    flex: 2,
                    child: CustomImageCard("https://www.boat-lifestyle.com/cdn/shop/products/d6f427fc-0529-40e5-824b-cb849c1943ce_53eae3b9-6058-428c-aad1-f881e93dee87_288x.png?v=1629538280","Boat AirDrop 433","999","21")),
                Expanded(
                    flex: 2,
                    child: CustomImageCard("https://www.jiomart.com/images/product/original/rvukuvkdgj/boult-audio-fast-charging-bluetooth-headset-for-mobiles-smartphones-and-laptops-product-images-orvukuvkdgj-p600723954-0-202304200556.jpg?im=Resize=(420,420)","Boult Neckband","399","40")),
              ],
            ),
            Row(
              children: [
                Expanded(
                    flex: 2,
                    child: CustomImageCard("https://rukminim2.flixcart.com/image/850/1000/xif0q/headphone/p/r/z/enco-buds-2-oppo-original-imagh9frfp7gxdb3.jpeg?q=20","Oppo Enco Buds 2","1299","50")),
                Expanded(
                    flex: 2,
                    child: CustomImageCard("https://m.media-amazon.com/images/I/51c8jaXEp+S.jpg","Samsung Galaxy Buds Pro","4990","55")),
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
