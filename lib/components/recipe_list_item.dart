import 'package:flutter/material.dart';

class RecipeListItem extends StatelessWidget {
  const RecipeListItem(this.imageName, this.title, {super.key});
  final String imageName;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 3/1.8,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                  child: Image.asset("assets/images/$imageName.jpeg", fit: BoxFit.cover,))
          ),
          SizedBox(height: 10,),
          Text(title, style: TextStyle(fontSize: 20),),
          Text("Have you ever made your own $title? Once you've tried a homemade $title, you'll never go back",
          style: TextStyle(fontSize: 12, color: Colors.grey))
        ],
      ),
    );
  }
}
