import 'package:flutter/material.dart';

class LibraryBookScreen extends StatelessWidget {
  const LibraryBookScreen({super.key});
   static const String routeName = '/library-book-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Thư viện')),
      body: const Center(child: Text('Đây là màn hình Thư viện')),
    );
  }
}
