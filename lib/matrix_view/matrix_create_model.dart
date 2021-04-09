import 'package:flutter/material.dart';
import 'dynamic_martix.dart';


//add matrixRow

List<Widget> AddMatrixRow(RowList){
    List<Widget> rowTextFields = [];

    for(int i=0; i<RowList.length; i++){
      rowTextFields.add(
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              children: [
                TextFormModelForRow(i),
                SizedBox(width: 16,),
                // we need add button at last friends row

               // _addRemoveButton(i == friendsList.length-1, i),
              ],
            ),
          )
      );
    }
    return   rowTextFields;
  }

//AddMatrixColumn
List<Widget> AddMatrixColumn(ColumnList){
  List<Widget> columnTextFields = [];

  for(int i=0; i<ColumnList.length; i++){
    columnTextFields.add(
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Row(
            children: [
              TextFormModelForColumns(i),
              SizedBox(width: 16,),
              // we need add button at last friends row

              // _addRemoveButton(i == friendsList.length-1, i),
            ],
          ),
        )
    );
  }
  return   columnTextFields;
}