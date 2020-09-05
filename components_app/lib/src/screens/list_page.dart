import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<int> _listNumber = new List();
  int _lastItem = 0;
  ScrollController _scrollController = new ScrollController();

  @override
  void initState() {
    super.initState();
    addImagesToList();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        addImagesToList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lists'),
      ),
      body: _listsImages(),
    );
  }

  Widget _listsImages() {
    return ListView.builder(
      controller: _scrollController,
      itemCount: _listNumber.length,
      itemBuilder: (BuildContext context, int index) {
        final image = _listNumber[index];
        return FadeInImage(
          image: NetworkImage('https://picsum.photos/500/300/?image=$image'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        );
      },
    );
  }

  addImagesToList() {
    for (var i = 0; i < 10; i++) {
      _lastItem++;
      _listNumber.add(_lastItem);
    }
    setState(() {});
  }
}
