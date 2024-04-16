import 'package:flutter/material.dart';


class CustomComponent extends StatelessWidget {
  final IconData iconData;
  final String title;
  final Color color;

  const CustomComponent({
    Key? key,
    required this.iconData,
    required this.title,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon( iconData,size: 40,color: Colors.white,),
          ),
          Text(title,style: TextStyle(fontSize: 20,color: Colors.white),),

        ],
      ),
      margin: EdgeInsets.all(10),
      color: color,
      height: 100,
      width: 300,

    );
  }
}