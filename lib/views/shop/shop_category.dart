import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShopCategory extends StatelessWidget {

  final List<String> entries = <String>['Chair', 'Kitchen Set', 'Sofa', 'Mirror', 'Table'];
  final List<int> colorCodes = <int>[600, 500, 400, 300, 200];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.red,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for(int i = 0; i < entries.length; i++)
                  CategoryItem(entries[i], colorCodes[i], context).build()
              ],
            ),
          )
        ),
      ),
    );
  }
}

class CategoryItem {
  String _title;
  int _colorCode;
  BuildContext _context;

  CategoryItem(String title, int colorCode, BuildContext context) {
    _title = title;
    _colorCode = colorCode;
    _context = context;
  }

  Widget build() {
    return InkWell(
      child: Container(
        color: Colors.green,
        padding: EdgeInsets.all(MediaQuery.of(_context).size.height / 80),
        margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(_context).size.width / 35),
        child: Text(
            _title
        ),
      ),
      onTap: () => {
        print("Pushed $_title")
      },
    );
  }
}
