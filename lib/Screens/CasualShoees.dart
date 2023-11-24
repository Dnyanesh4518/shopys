import 'package:flutter/material.dart';

class CasualShooes extends StatefulWidget {
  const CasualShooes({super.key});

  @override
  State<CasualShooes> createState() => _CasualShooesState();
}

class _CasualShooesState extends State<CasualShooes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 30,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("Men Shoes",style: TextStyle(color: Colors.black),),
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
                    child: CustomImageCard("https://rukminim2.flixcart.com/image/850/1000/xif0q/shoe/w/h/i/6-wboot-kardam-sons-white-original-imaghcx5sh25fzx5.jpeg?q=20","White Senakers","399","81")),
                Expanded(
                    flex: 2,
                    child: CustomImageCard("https://rukminim2.flixcart.com/image/850/1000/xif0q/shoe/z/2/8/6-bline-trends-black-original-imaghgvf929wb6zm.jpeg?q=20","Casual For Men","158","84")),
              ],
            ),
            Row(
              children: [
                Expanded(
                    flex: 2,
                    child: CustomImageCard("https://rukminim2.flixcart.com/image/850/1000/xif0q/shoe/z/2/8/6-bline-trends-black-original-imaghgvf929wb6zm.jpeg?q=20","Running Shoes","261","67")),
                Expanded(
                    flex: 2,
                    child: CustomImageCard("https://hips.hearstapps.com/hmg-prod/images/hoka-zinal-13085-1643565794.jpg?crop=1.00xw:0.752xh;0,0.115xh&resize=1200:*","Light Shoes for Runners","599","78")),
              ],
            ),
            Row(
              children: [
                Expanded(
                    flex: 2,
                    child: CustomImageCard("https://assets.ajio.com/medias/sys_master/root/20231005/zFDJ/651ecae5afa4cf41f529f4ce/-288Wx360H-465121413-white-MODEL.jpg","Campus Running Shoes","539","51")),
                Expanded(
                    flex: 2,
                    child: CustomImageCard("https://dxkvlfvncvqr8.cloudfront.net/media/product-image/SM-830-WHSG-1.jpg","Spark Running Shoes","659","70")),
              ],
            ),
            Row(
              children: [
                Expanded(
                    flex: 2,
                    child: CustomImageCard("https://m.media-amazon.com/images/I/71ZbARFAaQS._AC_UY1000_.jpg","Loafer Shoes","499","47")),
                Expanded(
                    flex: 2,
                    child: CustomImageCard("https://5.imimg.com/data5/SELLER/Default/2021/7/PG/UB/GY/8852934/-mg-0259.JPG","Men Casual Shoes","720","55")),
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
