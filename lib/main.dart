import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: BallPage(),
    ),
  );

}

class BallPage extends StatelessWidget {
  const BallPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(title: Text('ask me anyting'),),
      body: Ball(),


    );
  }
}
class Ball extends StatefulWidget {
  //const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();

}
class _BallState extends State<Ball> {
  //const _BallState({Key? key}) : super(key: key);
  int ballNumber =0;
  @override
  Widget build(BuildContext context) {
    return Center(child: TextButton(child: Image.asset('images/Ball$ballNumber.png'),onPressed: (){
      setState(() {
        ballNumber = Random().nextint(5) +1 ;
      });

      print('i got clicked: $ballNumber');
    }),);
  }

  Random() {}
}