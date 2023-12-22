import 'package:flutter/material.dart';

class profileScreen extends StatefulWidget {
  const profileScreen({super.key});

  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.lock_outline_sharp,
                      size: 20,
                      weight: 100,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "mrsherry_03",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Icon(Icons.keyboard_arrow_down_sharp),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.add_box_outlined)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                ],
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  radius: 40,
                  foregroundImage: AssetImage(
                    "assets/images/profile.png",
                  ),
                ),
              ),
              Column(
                children: [
                  Text(
                    "6",
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                  ),
                  Text(
                    "Posts",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black45,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    "169",
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                  ),
                  Text(
                    "Followers",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black45,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    "97",
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                  ),
                  Text(
                    "Following",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black45,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  "Shehroz Ashraf khan",
                  style: TextStyle(
                      fontSize: 12.5,
                      color: Colors.black45,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  "Shehroz Ashraf khan",
                  style: TextStyle(
                      fontSize: 12.5,
                      color: Colors.black45,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 10),
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.39,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 230, 230, 230),
                  ),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Edit profile",
                        style: TextStyle(color: Colors.black),
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  width: MediaQuery.of(context).size.width * 0.39,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 230, 230, 230),
                  ),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Share profile",
                        style: TextStyle(color: Colors.black),
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  width: MediaQuery.of(context).size.width * 0.10,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 230, 230, 230),
                  ),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.person_add_alt_1_outlined)),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.grid_on_outlined),
                Image.asset(
                  'assets/images/person_square.png',
                  width: 20,
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
