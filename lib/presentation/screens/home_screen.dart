import 'package:club_house_ui/core/data.dart';
import 'package:club_house_ui/presentation/widgets/room_card.dart';
import 'package:club_house_ui/presentation/widgets/user_profile_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.search,
            color: Colors.black,
            size: 28,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(
              CupertinoIcons.envelope_open,
              color: Colors.black,
              size: 25,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              CupertinoIcons.calendar,
              color: Colors.black,
              size: 28,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              CupertinoIcons.bell,
              color: Colors.black,
              size: 28,
            ),
            onPressed: () {},
          ),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: UserProfileImage(
                size: 34.5,
                imageUrl: currentUser.imageURL,
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          ListView(
            children: [
              ...roomList.map((oneRoom) => RoomCard(room: oneRoom))
            ],
            padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 100.0),
          ),
          Positioned(
            left: 0.0,
            right: 0.0,
            bottom: 0,
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Theme.of(context).scaffoldBackgroundColor.withOpacity(0.1),
                    Theme.of(context).scaffoldBackgroundColor
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 50.0,
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.add,
                size: 20,
                color: Colors.white,
              ),
              label: const Text(
                'Start a Room',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(12),
                primary: Theme.of(context).accentColor,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
