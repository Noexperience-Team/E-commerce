import 'package:flutter/material.dart';
class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
          children: [
            Category(
              image_location: 'images/cat/tshirt.png',
              image_caption: "shirt",

            ),Category(
              image_location: 'images/cat/dress.png',
              image_caption: "dress",

            ),
            Category(
              image_location: 'images/cat/shoe.png',
              image_caption: "shoe",

            ),
            Category(
              image_location: 'images/cat/jeans.png',
              image_caption: "jeans",

            ),
            Category(
              image_location: 'images/cat/informal.png',
              image_caption: "informal",

            ),
            Category(
              image_location: 'images/cat/formal.png',
              image_caption: "formal",

            ),
            Category(
              image_location: 'images/cat/accessories.png',
              image_caption: "accessories",

            ),


          ],
      ),
    );
  }
}
class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  const Category({ this.image_location, this.image_caption}) ;
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),child: InkWell(
      onTap: (){},
      child: Container(
        width: 100.0,
        child: ListTile(
          title: Image.asset(image_location,width: 100.0,height: 80.0,),
          subtitle: Container(
            alignment: Alignment.topCenter,
              child:Text(image_caption,style: TextStyle(fontSize: 12.0),)
          ),
        ),
      ),
    ),);
  }
}
