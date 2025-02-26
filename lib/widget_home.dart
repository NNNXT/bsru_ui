import 'package:flutter/material.dart';

class WidgetHome extends StatelessWidget {
  const WidgetHome({super.key});

  @override
  Widget build(BuildContext context) {
    var chatData = [
      {"id": "http://dummyimage.com/117x100.png/ff4444/ffffff", "first_name": "Ferguson", "gender": "Male"},
      {"id": "http://dummyimage.com/117x100.png/ff4444/ffffff", "first_name": "Mohandis", "gender": "Male"},
      {"id": "http://dummyimage.com/208x100.png/dddddd/000000", "first_name": "Lindy", "gender": "Female"},
      {"id": "http://dummyimage.com/209x100.png/5fa2dd/ffffff", "first_name": "Shannen", "gender": "Female"},
      {"id": "http://dummyimage.com/228x100.png/cc0000/ffffff", "first_name": "Jessalyn", "gender": "Female"},
      {"id": "http://dummyimage.com/117x100.png/cc0000/ffffff", "first_name": "Beryle", "gender": "Female"},
      {"id": "http://dummyimage.com/200x100.png/ff4444/ffffff", "first_name": "Zach", "gender": "Male"},
      {"id": "http://dummyimage.com/243x100.png/cc0000/ffffff", "first_name": "Packston", "gender": "Male"},
      {"id": "http://dummyimage.com/114x100.png/ff4444/ffffff", "first_name": "Gasper", "gender": "Male"},
      {"id": "http://dummyimage.com/108x100.png/dddddd/000000", "first_name": "Colby", "gender": "Male"}
    ];
    return ListView(
      children: List.generate(
        chatData.length,
        (index) => ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.network(
              chatData[index]['id'] ?? '',
              width: 50,
              height: 50,
              fit: BoxFit.fill,
            ),
          ),
          title: Text(chatData[index]['first_name'] ?? 'BSRU'),
          subtitle: Text(chatData[index]['gender'] ?? ''),
          trailing: chatData[index]['gender'] == 'Male'
              ? const Icon(
                  Icons.male,
                  color: Colors.blue,
                )
              : const Icon(
                  Icons.female,
                  color: Colors.pink,
                ),
        ),
      ),
    );
  }
}
