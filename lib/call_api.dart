import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class CallAPI extends StatefulWidget {
  const CallAPI({super.key});

  @override
  State<CallAPI> createState() => _CallAPIState();
}

class _CallAPIState extends State<CallAPI> {
  String imageUrl = '';
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : imageUrl.isEmpty
              ? const SizedBox.shrink()
              : Center(child: Image.network(imageUrl)),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          setState(() {
            isLoading = true;
          });
          Dio dio = Dio();
          var res = await dio.get('https://dog.ceo/api/breeds/image/random');
          setState(() {
            imageUrl = res.data['message'] ?? '';
            isLoading = false;
          });
        },
      ),
    );
  }
}
