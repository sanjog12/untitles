import 'package:flutter/material.dart';

class CommentaryScreen extends StatelessWidget {
  const CommentaryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      child: Text("Commentary Screen"),
    );
  }
}
