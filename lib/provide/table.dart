import 'package:flutter/material.dart';

class TableProvide with ChangeNotifier{ 
  List<String> keyList=[];
  List contextList=[];
  List titleList=[];
  List contextNum=[];
  List openState=[];  
  var contextMap;
  int count;
  dynamic openNum;


  getTableInfo() async{

      
      
      contextList=[
        {'image': 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1560056361666&di=8018ffbf93410bf8dca7c895e5aa0ab9&imgtype=0&src=http%3A%2F%2Fimg02.tooopen.com%2Fimages%2F20140419%2Fsy_59409112881.jpg', 'text': '第一幅'},
        {'image': 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1560056361666&di=7a3ef3440290b447a242ca96b3a55a9c&imgtype=0&src=http%3A%2F%2Fimg.pconline.com.cn%2Fimages%2Fphotoblog%2F9%2F5%2F1%2F0%2F9510448%2F20099%2F2%2F1251889640200.jpg', 'text': '第二幅'},
        {'image': 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1560056361665&di=a2269bf89f57e9cd417741271b9e7084&imgtype=0&src=http%3A%2F%2Fimg.pconline.com.cn%2Fimages%2Fupload%2Fupc%2Ftx%2Fphotoblog%2F1106%2F29%2Fc6%2F8173931_8173931_1309340870844.jpg', 'text': '第三幅'},
      ];
  }

  
}