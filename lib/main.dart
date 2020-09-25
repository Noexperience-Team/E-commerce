import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:e_commerce/componets/horizontal_listview.dart';
import 'package:e_commerce/componets/Products.dart';
void main()=>runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home:HomePage(),
));
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel=new Container(
      height:200.0 ,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage(
            'images/w4.jpeg'
          ),

          AssetImage(
              'images/m1.jpeg'
          ),
          AssetImage(
              'images/m2.jpg'
          ),
          AssetImage(
              'images/w1.jpeg'
          ),
          AssetImage(
              'images/w3.jpeg'
          ),
          AssetImage(
              'images/w4.jpeg'
          ),
          AssetImage(
              'images/m1.jpeg'
          ),

        ],
        autoplay: true,
        autoplayDuration: Duration(seconds: 10),
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(microseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 4.0,
        dotColor: Colors.blueAccent,
      ),
    );
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.blueAccent,
        title: Text("Bacem's Market"),
      actions: <Widget>[
        new IconButton(icon: Icon(Icons.search,color: Colors.white,), onPressed: (){}),
        new IconButton(icon: Icon(Icons.add_shopping_cart),color: Colors.white, onPressed: (){})
      ],        
      ),

      drawer: new Drawer(

        child: new ListView(
          children: <Widget>[
            //header
            new UserAccountsDrawerHeader(accountName: Text('bacem'), accountEmail: Text('bacem.abroug@ne_team.com'),currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.blueGrey,

              ),
            ),
            decoration: new BoxDecoration(
              color: Colors.blueAccent,

            ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home,color: Colors.blueAccent,),

              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person,color: Colors.blueAccent,),

              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket,color: Colors.blueAccent,),

              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard,color: Colors.blueAccent,),

              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Favorites'),
                leading: Icon(Icons.favorite,color: Colors.blueAccent,),

              ),
            ),
            Divider(color: Colors.blueGrey,indent: 20,endIndent: 30,

            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Parameter'),
                leading: Icon(Icons.settings,color: Colors.blueAccent,),

              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help,color: Colors.blueAccent,),

              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          InkWell(onTap: (){},child: image_carousel,),

          new Padding(padding: const EdgeInsets.all(8.0),
          child:Text('Categories'),),
HorizontalList(),
          new Padding(padding: const EdgeInsets.all(15.0),
            child:Text('Recent products'),),
          Container(
            height: 320.0,
            child: Products(),
          ),
        ],
      ),
    );
  }
}
