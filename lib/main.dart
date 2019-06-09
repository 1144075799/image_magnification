import 'package:flutter/material.dart';
import './page/commodity_page.dart';
import 'package:provide/provide.dart';
import './provide/table.dart';

void main(){

  var providers=Providers();
  var tableProvide=TableProvide();

  providers
  ..provide(Provider<TableProvide>.value(tableProvide));

  runApp(ProviderNode(child: MyApp(),providers: providers,));
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: CommodityPage(),
    );
  }
}

