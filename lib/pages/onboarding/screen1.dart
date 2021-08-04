import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  // final VoidCallback? next;
  // final VoidCallback? skip;

  // const Screen1({Key? key, this.next, this.skip}) : super(key: key);
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final textTheme = Theme.of(context).textTheme;
    return Container(
      color: Colors.white,
      child: Center(
        child: Text("Page "),
      ),
    );
  }
}
