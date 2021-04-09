import 'package:flutter/material.dart';
import 'package:matrix_app/main.dart';



//Matrix Rows

class TextFormModelForRow extends StatefulWidget {
  final int index;
  TextFormModelForRow(this.index);
  @override
  _TextFormModelForRowState createState() => _TextFormModelForRowState();
}


class _TextFormModelForRowState extends State<TextFormModelForRow> {
  TextEditingController _nameController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _nameController.text = MatrixViewState.matrixRowElemetnList[widget.index] ?? '';
    });

    return Container(
      width: 50,
      child: TextFormField(
        textAlign: TextAlign.center,
        controller: _nameController,
       onChanged: (v) => MatrixViewState.matrixRowElemetnList[widget.index] = v,
        decoration: InputDecoration(
            hintText: '0'
        ),
        validator: (v){
          if(v.trim().isEmpty) return 'Please enter something';
          return null;
        },
      ),
    );
  }
}


//Matrix Columns


class TextFormModelForColumns extends StatefulWidget {
  final int index;
  TextFormModelForColumns(this.index);
  @override
  _TextFormModelForColumnsState createState() => _TextFormModelForColumnsState();
}


class _TextFormModelForColumnsState extends State<TextFormModelForColumns> {
  TextEditingController _nameController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _nameController.text = MatrixViewState.matrixColumnElemetnList[widget.index] ?? '';
    });

    return Container(
      width: 50,
      child: TextFormField(
        textAlign: TextAlign.center,
        controller: _nameController,
        onChanged: (v) => MatrixViewState.matrixColumnElemetnList[widget.index] = v,
        decoration: InputDecoration(
            hintText: '0'
        ),
        validator: (v){
          if(v.trim().isEmpty) return 'Please enter something';
          return null;
        },
      ),
    );
  }
}

