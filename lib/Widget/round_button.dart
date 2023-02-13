import 'package:flutter/material.dart';
import 'package:zai_system/Widget/constants.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool loading;
  const RoundButton({Key? key,
    required this.title,
    required this.onTap,
    this.loading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: redcolor,
            borderRadius: BorderRadius.circular(20)),
        height: 50,
        width: 300,
        child:Center(child: loading? const CircularProgressIndicator(color: Colors.white,) :
        Text(title,style:const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),),
      ),
    );
  }
}
