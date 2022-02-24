import 'package:flutter/material.dart';
class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
      ),
      body: ListView.separated(physics: BouncingScrollPhysics(),itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.category),
          title: Text('Category'),
          subtitle: Text('Category Sub Title'),
          trailing: Icon(Icons.arrow_forward_ios),
        );
      }, separatorBuilder: (context, index) {
        return Divider(indent: 5,
        endIndent: 5,
        thickness: 3,
        );
      }, itemCount: 12),
    );
  }

}
/*ListView.builder(itemCount: 10,itemBuilder:(context, index) {
return ListTile(
leading: Icon(Icons.category),
title: Text('Category'),
subtitle: Text('Category Sub Title'),
trailing: Icon(Icons.arrow_forward_ios),
);
},)*/
/*
ListView(
physics: BouncingScrollPhysics(),
shrinkWrap:true ,
padding: EdgeInsetsDirectional.only(start: 10,end: 10),
children: [
ListTile(
leading: Icon(Icons.category),
title: Text('Category'),
subtitle: Text('Category Sub Title'),
trailing: Icon(Icons.arrow_forward_ios),
),
ListTile(
leading: Icon(Icons.category),
title: Text('Category'),
subtitle: Text('Category Sub Title'),
trailing: Icon(Icons.arrow_forward_ios),
),
ListTile(
leading: Icon(Icons.category),
title: Text('Category'),
subtitle: Text('Category Sub Title'),
trailing: Icon(Icons.arrow_forward_ios),
),
ListTile(
leading: Icon(Icons.category),
title: Text('Category'),
subtitle: Text('Category Sub Title'),
trailing: Icon(Icons.arrow_forward_ios),
),
ListTile(
leading: Icon(Icons.category),
title: Text('Category'),
subtitle: Text('Category Sub Title'),
trailing: Icon(Icons.arrow_forward_ios),
),
ListTile(
leading: Icon(Icons.category),
title: Text('Category'),
subtitle: Text('Category Sub Title'),
trailing: Icon(Icons.arrow_forward_ios),
),
ListTile(
leading: Icon(Icons.category),
title: Text('Category'),
subtitle: Text('Category Sub Title'),
trailing: Icon(Icons.arrow_forward_ios),
),
ListTile(
leading: Icon(Icons.category),
title: Text('Category'),
subtitle: Text('Category Sub Title'),
trailing: Icon(Icons.arrow_forward_ios),
),
ListTile(
leading: Icon(Icons.category),
title: Text('Category'),
subtitle: Text('Category Sub Title'),
trailing: Icon(Icons.arrow_forward_ios),
),
ListTile(
leading: Icon(Icons.category),
title: Text('Category'),
subtitle: Text('Category Sub Title'),
trailing: Icon(Icons.arrow_forward_ios),
),
ListTile(
leading: Icon(Icons.category),
title: Text('Category'),
subtitle: Text('Category Sub Title'),
trailing: Icon(Icons.arrow_forward_ios),
),

],
)*/
