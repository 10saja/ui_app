import 'package:flutter/material.dart';
class OutBordingWidget extends StatelessWidget {
  const OutBordingWidget({
    Key? key,
    required this.image,
    required this.title,
    required this .subTitle
  }) : super(key: key);
  final String image;

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(image, height: 250,),
          Text(title, style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25
          ),
          ),
          Text(subTitle, style: const TextStyle(
              color: Colors.black45,
              fontSize: 20
          ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}