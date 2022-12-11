import 'package:flutter/cupertino.dart';

class Section extends StatelessWidget {

  final String title;

  const Section({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 20),
      child: Text(
        title,
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
