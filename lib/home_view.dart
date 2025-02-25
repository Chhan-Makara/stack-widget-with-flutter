import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(
          clipBehavior: Clip.none, //overlay
          alignment: Alignment.bottomCenter,
          children: [
            Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScOpRdACfI_P91yU7KyfK-DQuYWT9TID-eCKcWy4rTmM6lRg4L8dtmt-KE19M8yh4G0XA&usqp=CAU",
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Positioned(
              bottom: -50,
              child: CircleAvatar(
                radius: 55,
                backgroundColor: Colors.pink,
                child: const CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      "https://pabitraeditography.com/wp-content/uploads/2025/11/WhatsApp-Image-2022-11-05-at-2.25.01-PM-784x1024.jpeg"),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        Text(
          "Chhan Makara",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        TextButton(onPressed: () {}, child: Text("Contact me via Telegram"))
      ],
    ));
  }
}
