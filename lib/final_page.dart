import 'package:flutter/material.dart';

class FinalPage extends StatelessWidget {
  const FinalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: 
        Text('Compra finalizada com sucesso!', style: TextStyle(fontSize: 30, color: Colors.blue),),
      )
    );
  }
}