
import 'package:flutter/cupertino.dart';

class Souret with ChangeNotifier {

  final String id;
  final String title;
  final String imageUrl;
  final String numOfSourt;
  final String pageNum;
  Souret({
    @required this.id,
    @required this.title,
    @required this.numOfSourt,
    @required this.imageUrl,
    @required this.pageNum,


});
}

class Sourets with ChangeNotifier{

  List<Souret>   _items=[
    Souret(
      id: 'c1',
      title: 'الفاتحة',
      numOfSourt: '7',
      imageUrl: 'https://f.top4top.io/i_ced3add8a41.png',
        pageNum:'1'
    ),
    Souret(
        id: 'c2',
        title: 'البقرة',
        numOfSourt: '286',
        imageUrl: 'https://arabictype.files.wordpress.com/2013/11/greendome-reflection.png',
        pageNum:'2'
    ),
    Souret(
        id: 'c3',
        title: 'ال عمران',
        numOfSourt: '200',
        imageUrl: 'https://arabictype.files.wordpress.com/2013/11/greendome-reflection.png',
        pageNum:'50'
    ),
    Souret(
        id: 'c4',
        title: 'النساء',
        numOfSourt: '176',
        imageUrl: 'https://arabictype.files.wordpress.com/2013/11/greendome-reflection.png',
        pageNum:'77'
    )
  ];


  List<Souret> get items{
    return[..._items];

  }


}