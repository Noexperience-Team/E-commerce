import 'package:flutter/material.dart';
class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list=[
    {
      "name":"Blazer",
      "picture":"images/prod/blazer2.jpeg",
      "old_price":263.0,
      "price":200.0,
    },
    {
      "name":"dress",
      "picture":"images/prod/dress2.jpeg",
      "old_price":500.0,
      "price":450.0,
    },
    {
      "name":"Dress",
      "picture":"images/prod/dress1.jpeg",
      "old_price":500.0,
      "price":450.0,
    },
    {
      "name":"Hills",
      "picture":"images/prod/hills2.jpeg",
      "old_price":500.0,
      "price":450.0,
    },
    {
      "name":"Hilss",
      "picture":"images/prod/hills1.jpeg",
      "old_price":500.0,
      "price":450.0,
    },
    {
      "name":"Shoes",
      "picture":"images/prod/shoe1.jpg",
      "old_price":500.0,
      "price":450.0,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (BuildContext context,int index){
    return Single_prod(product_name: product_list[index]['name'],
    prod_picture: product_list[index]['picture'],
      prod_ildPrice: product_list[index]['old_price'],
      prod_price: product_list[index]['price'],
    );
        }
    );
  }
}
class Single_prod extends StatelessWidget {
  final product_name;
  final prod_picture;
  final prod_ildPrice;
  final prod_price;

  const Single_prod({this.product_name, this.prod_picture, this.prod_ildPrice, this.prod_price}) ;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(tag: product_name,child: Material(child: InkWell(
        onTap: (){},
        child: GridTile(
        footer: Container(
          child: ListTile(
            leading: Text(product_name,style: TextStyle(fontWeight: FontWeight.bold),
            ),
            title:Text("\$$prod_price",style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.w800),) ,
            subtitle: Text("\$$prod_ildPrice",style: TextStyle(decoration: TextDecoration.lineThrough),),
          ),
          color: Colors.white70,
        ),
        child: Image.asset(prod_picture,fit: BoxFit.cover),),
      ),),),

    );
  }
}
