import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME'),
      ),
      body: ListView(

        padding: EdgeInsetsDirectional.only(start: 20,top: 20,end: 20),
        children: [
          Text('Categories',style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize:20
          ),),

         SizedBox(
           height: 100,
           child: GridView.builder(scrollDirection: Axis.horizontal,
             itemCount: 12,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
             crossAxisCount: 1,), itemBuilder: (context, index) {
             return Card(color: Colors.blue,);
           },),
         ),
          Text('Products',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize:20
          ),),
          SizedBox(
            height: 800,
            child: ListView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                ListTile(
                  leading: Icon(Icons.category),
                  title: Text('Product'),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: Icon(Icons.category),
                  title: Text('Product'),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: Icon(Icons.category),
                  title: Text('Product'),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: Icon(Icons.category),
                  title: Text('Product'),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: Icon(Icons.category),
                  title: Text('Product'),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: Icon(Icons.category),
                  title: Text('Product'),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: Icon(Icons.category),
                  title: Text('Product'),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: Icon(Icons.category),
                  title: Text('Product'),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: Icon(Icons.category),
                  title: Text('Product'),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: Icon(Icons.category),
                  title: Text('Product'),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: Icon(Icons.category),
                  title: Text('Product'),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
          )
         ],



      ),
    );
  }
}
