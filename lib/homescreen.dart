import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  void signOut(){
    FirebaseAuth.instance.signOut();
  }
  final user=FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
           backgroundColor: Colors.transparent, // Making AppBar transparent
        // flexibleSpace: Container(
        //   decoration: BoxDecoration(
        //     gradient: LinearGradient(
        //       begin: Alignment.centerLeft,
        //       end: Alignment.centerRight,
        //       colors: [
        //         Color.fromRGBO(254, 249, 243, 1),
        //         Color.fromRGBO(235, 243, 254, 1),
        //         Color.fromRGBO(238, 251, 242, 1),
        //       ],
        //       stops: [0.0, 0.35, 1.0],
        //     ),
        //   ),
        // ),
        title: Row(
          children: [
            Image.network(
              "https://th.bing.com/th/id/R.825e4d7b40faa8f9c51da0c73d6254d8?rik=RVfV80ATb%2boUhg&pid=ImgRaw&r=0",
              width: 110,
              height: 100,
            ),
            Icon(Icons.keyboard_arrow_down_sharp),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Implement action (e.g., Search functionality)
            },
            icon: Icon(Icons.favorite_border_rounded, color: Colors.black),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Image.network(
              "https://th.bing.com/th/id/OIP.Kb8XWL899wpZKDS8LosySgHaHk?rs=1&pid=ImgDetMain",
              width: 20,
            ),
          ),
            IconButton(onPressed: signOut,icon: Icon(Icons.logout)),
        ],
      ),
      body: Container(
    
        child: ListView.builder(
          itemCount: 10, // Replace with actual post count
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.all(8.0),
              child: Card(
                elevation: 0.1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                          
                                    CircleAvatar(
                                      radius: 20,
                                      // Replace with user's profile image
                                      backgroundImage:
                                          AssetImage('assets/images/profile.png'),
                                    ),
                                    SizedBox(width: 8.0),
                                    Text(
                                      ''+user.email!, // Replace with user's username
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                           
                            ],
                          ),
                          Icon(Icons.more_vert_outlined),
                        ],
                      ),
                    ),
                    // Replace with post image
                    Image.asset('assets/images/post1.png',width: double.infinity),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(children: [
                                  IconButton(
                                    onPressed: () {
                                      // Implement like functionality
                                    },
                                    icon: Icon(Icons.favorite_border),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      // Implement comment functionality
                                    },
                                    icon: Icon(Icons.comment),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      // Implement share functionality
                                    },
                                    icon: Icon(Icons.send),
                                  ),
                                ]),
                              ),
                              IconButton(
                                onPressed: () {
                                  // Implement save functionality
                                },
                                icon: Icon(Icons.bookmark_border),
                              ),
                            ],
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            '42 likes', // Replace with actual like count
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 4.0),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 12,
                                // Replace with comment user's profile image
                                backgroundImage:
                                    AssetImage('assets/images/profile.png'),
                              ),
                              SizedBox(width: 8.0),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'CommentUsername', // Replace with comment user's username
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'This is a comment', // Replace with comment text
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'View all 10 comments', // Replace with comment count
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'Posted on 21 Dec 2023', // Replace with post date
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle),
            label: 'Upload',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_collection),
            label: 'Videos',
          ),
          BottomNavigationBarItem(
          
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
