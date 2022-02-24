import 'package:flutter/material.dart';
class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product'),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          childAspectRatio: 113/150,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,

        ),
        children: [
          Card(elevation: 20,),
          Card(elevation: 20,),
          Card(elevation: 20,),
          Card(elevation: 20,),
          Card(elevation: 20,),
          Card(elevation: 20,),
          Card(elevation: 20,),
          Card(elevation: 20,),
          Card(elevation: 20,),
          Card(elevation: 20,),
        ],
      ),
    );
  }
}

/*
GridView.builder(scrollDirection: Axis.horizontal,itemCount: 10,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
crossAxisCount: 2,
mainAxisSpacing: 10,
crossAxisSpacing: 10
), itemBuilder: (context, index) {
return Container(
color: Colors .green,
);
},)
*/
