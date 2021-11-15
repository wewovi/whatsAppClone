import 'package:flutter/material.dart';
import 'package:whats_app_clone/models/data.dart';
//import 'package:unicons/unicons.dart';

class WhatsAppHomeView extends StatelessWidget {
  WhatsAppHomeView({Key? key}) : super(key: key);

  final profile = [
    Profiles(
        name: "Adriana",
        message: "its been quite a while",
        number_of_messages: "3",
        profile_picture:
            "https://res.cloudinary.com/dykjpcitp/image/upload/v1636713091/ifinance/adriana1_scx7tz.jpg",
        time_received_message: "8:58am"),
    Profiles(
        name: "Jonas H. Wewovi",
        message: "whats have you been up to",
        number_of_messages: "1",
        profile_picture:
            "https://res.cloudinary.com/dykjpcitp/image/upload/v1636982656/store/toa-heftiba-O3ymvT7Wf9U-unsplash_tbhfy6.jpg",
        time_received_message: "Yesterday"),
    Profiles(
        name: "Neema",
        message: "whats up with you",
        number_of_messages: "2",
        profile_picture:
            "https://res.cloudinary.com/dykjpcitp/image/upload/v1636982656/store/toa-heftiba-O3ymvT7Wf9U-unsplash_tbhfy6.jpg",
        time_received_message: "Yesterday"),
    Profiles(
        name: "Jonas H. Wewovi",
        message: "what have you been up to?",
        number_of_messages: "1",
        profile_picture:
            "https://res.cloudinary.com/dykjpcitp/image/upload/v1636982656/store/ayo-ogunseinde-6W4F62sN_yI-unsplash_oghzw4.jpg",
        time_received_message: "5.00pm"),
    Profiles(
        name: "Akos",
        message: "whats that?",
        number_of_messages: "4",
        profile_picture:
            "https://res.cloudinary.com/dykjpcitp/image/upload/v1636982654/store/rayul-_M6gy9oHgII-unsplash_h8lqdn.jpg",
        time_received_message: "Yesterday"),
    Profiles(
        name: "Mantho",
        message: "hello",
        number_of_messages: "1",
        profile_picture:
            "https://res.cloudinary.com/dykjpcitp/image/upload/v1636982654/store/ian-dooley-d1UPkiFd04A-unsplash_pjpwx8.jpg",
        time_received_message: "Yesterday"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            backgroundColor: Color(0xFFF20C153),
            onPressed: () {},
            child: Icon(Icons.message_outlined)),
        backgroundColor: Color(0xFFFF9F9F9),
        appBar: AppBar(
          elevation: 15,
          shadowColor: Color(0xFFFECECEC),
          backgroundColor: Color(0xFFF075E55),
          // leading:
          //     IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
          title: Text(
            "WhatsApp",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
          ),
          actions: [
            IconButton(
                onPressed: () {}, icon: Icon(Icons.search_outlined, size: 30)),
            IconButton(
                onPressed: () {},
                icon: Image.network(
                  "https://res.cloudinary.com/dykjpcitp/image/upload/v1636934854/store/dots-vertical_gqjn1f.png",
                  color: Colors.white,
                  height: 30,
                ))
          ],
          bottom: PreferredSize(
            child: Container(
              color: Color(0xFFF075E55),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.camera_alt_outlined,
                          color: Colors.white, size: 30)),
                  TextButton(
                      onPressed: () {},
                      child: Text("CHATS",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500))),
                  TextButton(
                      onPressed: () {},
                      child: Text("STATUS",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500))),
                  TextButton(
                      onPressed: () {},
                      child: Text("CALLS",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500)))
                ],
              ),
            ),
            preferredSize: Size.fromHeight(kToolbarHeight),
          ),
        ),
        body: ListView.separated(
            itemBuilder: (BuildContext context, index) {
              return ListTile(
                leading: CircleAvatar(
                  // backgroundColor: Colors.black,
                  backgroundImage: NetworkImage(profile[index].profile_picture),
                  radius: 30,
                ),
                title: Text(profile[index].name,
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                subtitle: Text(profile[index].message,
                    style: TextStyle(fontSize: 15)),
                trailing: Column(
                  children: [
                    Text(profile[index].time_received_message,
                        style:
                            TextStyle(fontSize: 15, color: Color(0xFFF39C867))),
                    Container(
                        width: MediaQuery.of(context).size.width / 18,
                        height: MediaQuery.of(context).size.height / 35,
                        decoration: BoxDecoration(
                          color: Color(0xFFF3DCA6A),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Center(
                            child: Text(profile[index].number_of_messages,
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white)))),
                  ],
                ),
              );
            },
            separatorBuilder: (BuildContext context, index) =>
                Divider(height: 1, color: Color(0xFFFF4F4F4)),
            itemCount: profile.length));
  }
}
