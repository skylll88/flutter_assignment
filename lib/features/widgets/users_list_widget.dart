import 'package:assignment2/features/model/user_model.dart';
import 'package:flutter/material.dart';

class UserListWidget extends StatelessWidget {

  const UserListWidget({super.key, required this.user,});

  final Users user;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          child: SizedBox(
            height: 65,
            width: 65,
            child: Stack(
              clipBehavior: Clip.none,
              fit: StackFit.expand,
              children: [

                (user.profileUrl != null) ? CircleAvatar(
                  backgroundImage: AssetImage(user.profileUrl!),
                  backgroundColor: Colors.grey,
                )

                    : CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  child: Text(user.userName.substring(0, 2).toUpperCase()),
                ),


                Positioned(
                  right: -5,
                  bottom: 5,
                  height: 25,
                  width: 25,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(user.countryIconUrl),
                    backgroundColor: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
        Text(user.userName.length > 10 ? '${user.userName.substring(0, 10)}...' : user.userName),
      ],
    );
  }
}