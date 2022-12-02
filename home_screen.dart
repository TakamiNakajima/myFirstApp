import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _TextHeader = "名前教えてちょ";
  TextEditingController _textEditingController = TextEditingController();
  Widget _imageWidget = Container();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("はじめてのアプリ"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(50.0),
        child: Column(
          children: [
            Center(
              child: Text(
                _TextHeader,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            TextField(
              keyboardType: TextInputType.text,
              style: TextStyle(fontSize: 18),
              controller: _textEditingController,
            ),
            Expanded(
              child: _imageWidget,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => _onClick(),
                child: Text(
                  "ここ押してみ",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onClick() {
    setState(
      () {
        //文字を変換する
        var inputText = _textEditingController.text;
        _TextHeader = "あなた$inputTextっていうのね！";
        //画像を表示する
        _imageWidget = Image.asset("assets/images/cat3.png");
      },
    );
  }
}
