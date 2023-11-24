import 'package:flutter/material.dart';

class FashionableTee extends StatefulWidget {
  const FashionableTee({super.key});

  @override
  State<FashionableTee> createState() => _FashionableTeeState();
}

class _FashionableTeeState extends State<FashionableTee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 30,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("Men's T Shirts",style: TextStyle(color: Colors.black),),
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
                    child: CustomImageCard("https://images.bewakoof.com/uploads/grid/app/types-of-t-shirts-for-men-bewakoof-blog-Scoop-Neck-Style-1612353777.jpg","Printed Men's T-Shirt","299","70")),
                Expanded(
                  flex: 2,
                    child: CustomImageCard("https://img0.junaroad.com/uiproducts/20018064/zoom_0-1688055659.jpg","Printed Black T-Shirt","299","70")),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                    child: CustomImageCard("https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/i1-af25497f-2123-4413-be41-52635f219c37/sportswear-t-shirt-zmMkxS.png","SportWear Men's T-Shirt","799","50")),
                Expanded(
                  flex: 2,
                    child: CustomImageCard("https://thehouseofrare.com/cdn/shop/products/IMG_0304_5a9e419b-d16c-45f9-8e7d-24c6a2e1fcc1.jpg?v=1663836379","Full Sleeves T-Shirt","399","40")),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                    child: CustomImageCard("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlTFj9Jr8PL5_8pnHQv2NjIMIwFZdHmoU5wQ&usqp=CAU","Crew Neck T-Shirt","299","57")),
                Expanded(
                  flex: 2,
                    child: CustomImageCard("https://cms.cloudinary.vpsvc.com/image/upload/c_scale,dpr_auto,f_auto,q_auto:good,w_900/India%20LOB/Clothing%20and%20Bags/Premium%20Polo%20T-Shirts/IN_Premium-Polo-T-Shirts_Overview","Custom Cotton Polo T-Shirt","550","30")),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                    child: CustomImageCard("https://rukminim1.flixcart.com/image/612/612/xif0q/t-shirt/y/t/k/xxs-t653-cgblwh-eyebogler-original-imaghyjv7kppbqxb.jpeg?q=70","Block Round Grey T-Shirt","410","44")),
                Expanded(
                  flex: 2,
                    child: CustomImageCard("https://img0.junaroad.com/uiproducts/20018064/zoom_0-1688055659.jpg","Printed Black T-Shirt","299","70")),
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
