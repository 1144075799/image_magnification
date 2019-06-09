import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provide/provide.dart';
import '../provide/table.dart';
import './big.dart';

class CommodityPage extends StatefulWidget {
  CommodityPage({Key key}) : super(key: key);

  _CommodityPageState createState() => _CommodityPageState();
}

class _CommodityPageState extends State<CommodityPage> {

  List contextList;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance=ScreenUtil(width: 750, height: 1334)..init(context);
    return Scaffold(
      appBar: AppBar(title: Text('测试'),),
      body:Container(
        child: FutureBuilder(
          future: _getInfo(context),     //调用请求方法
          builder: (context,snapshot){             
            if(snapshot.hasData){                      //判断是否有返回值

              contextList=Provide.value<TableProvide>(context).contextList;       //返回结果进行赋值

              return Center(
                child: ListView.builder(                                      //用listView进行布局
                  itemCount: contextList.length,
                  itemBuilder: (BuildContext context,int index){
                    return rowContext(context,index);
                  },
                )
              );
            }else{
              return Center(
                child:Text('加载中')
              );
            }
            },
        ),
      ),
    );
  }

  Widget rowContext(context,index){
    return Row(
      children: <Widget>[
        InkWell(
          child: Container(                                                                //显示图片
            width: ScreenUtil().setWidth(400),
            height: ScreenUtil().setHeight(200),
            margin: EdgeInsets.only(bottom: 5),
            child: Image.network('${contextList[index]['image']}',fit: BoxFit.fill,),
          ),
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return MyHomePage(imageUrl:contextList[index]['image']);
            }));
          },
        ),
        Text('${contextList[index]['text']}')                                     //显示文字
      ],
    );
  }

 

  Future _getInfo(BuildContext context) async{
    await Provide.value<TableProvide>(context).getTableInfo();
    return '加载完毕';
  }
}
