import 'package:flutter/material.dart';
//Matrix Rows
Widget RowAddButton(List RowList) {
  return  FloatingActionButton(
  onPressed: () {
    RowList.insert(0, null);
    print(RowList);
    print(RowList.length);
        },
  child: const Icon(Icons.plus_one_rounded),
  backgroundColor: Colors.blue,
  );

}

Widget RowRemoveButton(List RowList , index) {
  return  FloatingActionButton(
    onPressed: () {
      RowList.removeAt(index);
      print(RowList);
    },
    child: const Icon(Icons.exposure_minus_1),
    backgroundColor: Colors.blue,
  );

}


//matrix columns

Widget ColumnAddButton(List ColumnList) {

  return  FloatingActionButton(
    onPressed: () {
      ColumnList.insert(0 , null);
    },
    child: const Icon(Icons.plus_one_rounded),
    backgroundColor: Colors.pink,
  );

}


Widget ColumnRemoveButton(List ColumnList , index) {

  return  FloatingActionButton(
    onPressed: () {
     ColumnList.removeAt(index);
    },
    child: const Icon(Icons.exposure_minus_1),
    backgroundColor: Colors.pink,
  );


}