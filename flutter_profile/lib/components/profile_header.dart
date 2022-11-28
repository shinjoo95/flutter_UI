import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 20,),
        _buildHeaderAvatar(),
        SizedBox(width: 20,),
        _buildHeaderProfile(),

      ],
    );
  }

  Widget _buildHeaderAvatar(){
    return SizedBox(
      width: 100, height: 100,
      child: CircleAvatar(
        backgroundImage: AssetImage("assets/joobong.png"),
      ),
    );
  }

  Widget _buildHeaderProfile(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("주용신주봉", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),),
        SizedBox(height: 5,),
        Text("950929", style: TextStyle(fontSize: 20),),
        SizedBox(height: 5,),
        Text("안녕하세요 :)", style: TextStyle(fontSize: 15),),
      ],
    );
  }
}
